package com.kdm.library.domain;

public class Book {
    private String id;
    private String name;
    private String author;
    private int year;
    private boolean isBorrowed;

    public Book() {
    }

    public Book(String id, String name, String author, int year, boolean isBorrowed) {
        this.id = id;
        this.name = name;
        this.author = author;
        this.year = year;
        this.isBorrowed = isBorrowed;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public boolean isBorrowed() {
        return isBorrowed;
    }

    public void setBorrowed(boolean borrowed) {
        isBorrowed = borrowed;
    }
}
