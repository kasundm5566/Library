package com.kdm.library.controller;

import com.kdm.library.domain.Borrower;
import com.kdm.library.repository.BorrowerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public int addBorrower(HttpServletRequest request) {
        Borrower borrower = new Borrower();
        borrower.setFirstName(request.getParameter("borrowerFirstName"));
        borrower.setLastName(request.getParameter("borrowerLastName"));
        borrowerRepository.save(borrower);
        return 1;
    }

    @RequestMapping(method = RequestMethod.GET)
    @ResponseBody
    public Map<Integer, String> findBorrowerNamesWithIds() {
        List<Borrower> borrowerList = borrowerRepository.findAll();
        Map<Integer, String> borrowersMap = new HashMap<>();
        borrowerList.forEach(borrower -> {
            borrowersMap.put(borrower.getId(), (borrower.getFirstName() + " " + borrower.getLastName()));
        });
        return borrowersMap;
    }
}
