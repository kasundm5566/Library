package com.kdm.library.domain;

import javax.persistence.*;

@Entity
@Table(name = "borrower")
public class Borrower {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "borrower_id")
    private int id;
    @Column(name = "name")
    private String name;
    @Column(name = "age")
    private int age;
    @Column(name = "city")
    private String city;

    public Borrower() {
    }

    public Borrower(int id, String name, int age, String city) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.city = city;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
