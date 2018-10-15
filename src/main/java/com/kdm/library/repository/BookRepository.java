package com.kdm.library.repository;

import com.kdm.library.domain.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by kasun on 10/15/18.
 */
@Component
public interface BookRepository extends JpaRepository<Book, Integer> {

    @Query(value = "SELECT * FROM book WHERE name= ?1", nativeQuery = true)
    List<Book> searchBooksByName(String name);
}
