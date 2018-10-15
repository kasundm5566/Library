package com.kdm.library.controller;

import com.kdm.library.domain.Book;
import com.kdm.library.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by kasun on 10/15/18.
 */
@Controller
@RequestMapping(value = "/book")
public class BookController {

    @Autowired
    private BookRepository bookRepository;

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public String addBook(HttpServletRequest request) {
        Book book = new Book();
        book.setName(request.getParameter("bookName"));
        book.setAuthor(request.getParameter("bookAuthor"));
        book.setYear(Integer.parseInt(request.getParameter("bookYear")));
        bookRepository.save(book);
        return "success";
    }
}