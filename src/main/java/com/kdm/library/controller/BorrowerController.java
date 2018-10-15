package com.kdm.library.controller;

import com.kdm.library.domain.Borrower;
import com.kdm.library.repository.BorrowerRepository;
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
@RequestMapping(value = "/borrower")
public class BorrowerController {

    @Autowired
    private BorrowerRepository borrowerRepository;

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public String addBorrower(HttpServletRequest request) {
        Borrower borrower = new Borrower();
        borrower.setName(request.getParameter("borrowerName"));
        borrower.setAge(Integer.parseInt(request.getParameter("borrowerAge")));
        borrower.setCity(request.getParameter("borrowerCity"));
        borrowerRepository.save(borrower);
        return "success";
    }
}
