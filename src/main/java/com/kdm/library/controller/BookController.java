package com.kdm.library.controller;

import com.kdm.library.domain.Book;
import com.kdm.library.domain.Borrower;
import com.kdm.library.repository.BookRepository;
import com.kdm.library.repository.BorrowerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Optional;

/**
 * Created by kasun on 10/15/18.
 */
@Controller
@RequestMapping(value = "/book")
public class BookController {

    private final BookRepository bookRepository;
    private final BorrowerRepository borrowerRepository;

    @Autowired
    public BookController(BookRepository bookRepository, BorrowerRepository borrowerRepository) {
        this.bookRepository = bookRepository;
        this.borrowerRepository = borrowerRepository;
    }

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public int addBook(HttpServletRequest request) {
        Book book = new Book();
        book.setTitle(request.getParameter("bookTitle"));
        book.setAuthor(request.getParameter("bookAuthor"));
        bookRepository.save(book);
        return 1;
    }

    @RequestMapping(method = RequestMethod.GET, value = "/search")
    public ModelAndView searchBooks(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("/views/books");
        String searchKey = request.getParameter("searchKey");
        List<Book> books;
        if (searchKey.equals("")) {
            books = bookRepository.findBooksWithBorrower();
        } else {
            books = bookRepository.searchBooksByName(searchKey);
        }
        List<Borrower> borrowers = borrowerRepository.findAll();
        modelAndView.addObject("books", books);
        modelAndView.addObject("searchKey", searchKey);
        modelAndView.addObject("borrowers", borrowers);
        return modelAndView;
    }

    @RequestMapping(method = RequestMethod.POST, value = "/borrow")
    @ResponseBody
    public int borrowBook(HttpServletRequest request) {
        final DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String bookId = request.getParameter("bookId");
        String borrowerId = request.getParameter("borrowerId");
        Optional<Book> book = bookRepository.findById(Integer.parseInt(bookId));
        Optional<Borrower> borrower = borrowerRepository.findById(Integer.parseInt(borrowerId));
        Book updatedBook;
        if (book.isPresent() && borrower.isPresent()) {
            updatedBook = book.get();
            updatedBook.setBorrower(borrower.get());
            Date currentDate = new Date();
            Calendar c = Calendar.getInstance();
            c.setTime(currentDate);
            updatedBook.setBorrowedDate(dateFormat.format(currentDate));
            c.add(Calendar.DATE, 7);
            updatedBook.setReturnDate(dateFormat.format(c.getTime()));
            bookRepository.save(updatedBook);
            return 1;
        }
        return 0;
    }

    @RequestMapping(method = RequestMethod.POST, value = "/return")
    @ResponseBody
    public int returnBook(HttpServletRequest request) {
        String bookId = request.getParameter("bookId");
        Optional<Book> book = bookRepository.findById(Integer.parseInt(bookId));
        Book updatedBook;
        if (book.isPresent()) {
            updatedBook = book.get();
            updatedBook.setBorrower(new Borrower());
            bookRepository.save(updatedBook);
            return 1;
        }
        return 0;
    }
}
