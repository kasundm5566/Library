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

    @Query(value = "SELECT b.book_id, b.author, b.title, br.first_name, b.borrower_id, b.borrowed_date, b.return_date FROM book b LEFT JOIN borrower br ON  b.borrower_id = br.borrower_id", nativeQuery = true)
    List<Book> findBooksWithBorrower();

    @Query(value = "SELECT * FROM book WHERE title= ?1", nativeQuery = true)
    List<Book> searchBooksByName(String title);
}
