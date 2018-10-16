package com.kdm.library.domain;

import javax.persistence.*;

@Entity
@Table(name = "book")
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "book_id")
    private int id;
    @Column(name = "title")
    private String title;
    @Column(name = "author")
    private String author;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "borrower_id")
    private Borrower borrower;
    @Column(name = "borrowed_date")
    private String borrowedDate;
    @Column(name = "return_date")
    private String returnDate;

    public Book() {
    }

    public Book(String title, String author, Borrower borrower, String borrowedDate, String returnDate) {
        this.title = title;
        this.author = author;
        this.borrower = borrower;
        this.borrowedDate = borrowedDate;
        this.returnDate = returnDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Borrower getBorrower() {
        return borrower;
    }

    public void setBorrower(Borrower borrower) {
        this.borrower = borrower;
    }

    public String getBorrowedDate() {
        return borrowedDate;
    }

    public void setBorrowedDate(String borrowedDate) {
        this.borrowedDate = borrowedDate;
    }

    public String getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(String returnDate) {
        this.returnDate = returnDate;
    }
}
