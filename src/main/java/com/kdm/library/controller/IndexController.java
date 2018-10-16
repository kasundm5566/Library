package com.kdm.library.controller;

import com.kdm.library.domain.Book;
import com.kdm.library.domain.Borrower;
import com.kdm.library.repository.BookRepository;
import com.kdm.library.repository.BorrowerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by dinesh on 13/10/18.
 */

@Controller
public class IndexController {

    @Autowired
    private BookRepository bookRepository;

    @Autowired
    private BorrowerRepository borrowerRepository;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView indexPage() {
        ModelAndView modelAndView = new ModelAndView("/views/index");
        return modelAndView;
    }

    @RequestMapping(value = "/books", method = RequestMethod.GET)
    public ModelAndView addBookPage() {
        ModelAndView modelAndView = new ModelAndView("/views/books");
        List<Book> books = bookRepository.findBooksWithBorrower();
        List<Borrower> borrowers = borrowerRepository.findAll();
        modelAndView.addObject("books", books);
        modelAndView.addObject("borrowers", borrowers);
        return modelAndView;
    }

    @RequestMapping(value = "/borrowers", method = RequestMethod.GET)
    public ModelAndView addBorrowerPage() {
        ModelAndView modelAndView = new ModelAndView("/views/borrowers");
        List<Borrower> borrowers = borrowerRepository.findAll();
        modelAndView.addObject("borrowers", borrowers);
        return modelAndView;
    }

    @RequestMapping(value = "/overdue", method = RequestMethod.GET)
    public ModelAndView overdueBooks() {
        ModelAndView modelAndView = new ModelAndView("/views/overdue");
        List<Book> books = bookRepository.findOverdueBooks();
        modelAndView.addObject("books", books);
        return modelAndView;
    }
}
