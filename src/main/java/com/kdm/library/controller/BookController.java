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
import java.util.List;
import java.util.Optional;

/**
 * Created by kasun on 10/15/18.
 */
@Controller
@RequestMapping(value = "/book")
public class BookController {

    @Autowired
    private BookRepository bookRepository;

    @Autowired
    BorrowerRepository borrowerRepository;

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
        modelAndView.addObject("books", books);
        modelAndView.addObject("searchKey", searchKey);
        return modelAndView;
    }

    @RequestMapping(method = RequestMethod.POST, value = "/borrow")
    public ModelAndView borrowBook(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("/views/books");
        String bookId = request.getParameter("bookId");
        String borrowerId = request.getParameter("borrowerId");
        Optional<Book> book = bookRepository.findById(Integer.parseInt(bookId));
        Optional<Borrower> borrower = borrowerRepository.findById(Integer.parseInt(borrowerId));
        Book updatedBook;
        if (book.isPresent() && borrower.isPresent()) {
            updatedBook = book.get();
            updatedBook.setBorrower(borrower.get());
            updatedBook.setBorrowedDate("2018-10-16");
            updatedBook.setReturnDate("2018-10-23");
            bookRepository.save(updatedBook);
        }
        return modelAndView;
    }
}
