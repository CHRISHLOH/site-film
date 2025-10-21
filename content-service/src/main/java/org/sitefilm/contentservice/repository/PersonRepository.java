package org.sitefilm.contentservice.repository;

import org.sitefilm.contentservice.entity.main.person.Person;
import org.sitefilm.contentservice.entity.projection.MinimalPersonProjection;
import org.sitefilm.contentservice.entity.projection.PersonProjection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

@Repository
public interface PersonRepository extends JpaRepository<Person, Long> {
//
//    @Query("""
//            SELECT p FROM Person p
//            JOIN MoviePerson mp ON p.id = mp.person.id
//            LEFT JOIN FETCH p.genres
//            LEFT JOIN FETCH p.careers
//            LEFT JOIN FETCH p.country
//            LEFT JOIN FETCH p.city
//            WHERE mp.movie.id = :movieId
//            ORDER BY mp.actorPriorityLevel ASC""")
//    Set<Person> findPersonsByMovieId(@Param("movieId") Long movieId);
//
//    @Query("SELECT p.id AS id, " +
//            "p.firstName AS name, " +
//            "p.lastName AS lastName, " +
//            "mp.career AS careers " +
//            "FROM Person p " +
//            "JOIN MoviePerson mp ON p.id = mp.person.id " +
//            "WHERE mp.movie.id = :movieId " +
//            "ORDER BY mp.actorPriorityLevel ASC")
//    Set<MinimalPersonProjection> findMinimalPeopleInfoMovieById(@Param("movieId") Long movieId);
//
//    @Query("""
//        SELECT p.id AS id,
//            p.firstName AS name,
//            p.lastName AS lastName
//        FROM Person AS p
//        JOIN MoviePerson mp ON mp.person.id = p.id
//        WHERE mp.movie.id = :movieId
//        AND mp.career.id = :careerId
//        ORDER BY mp.actorPriorityLevel
//    """)
//    Set<PersonProjection> findNamePeople(@Param("movieId") Long movieId, @Param("careerId") Long careerId);
//
//
//    @Query("""
//    SELECT p.id AS id,
//           p.firstName AS name,
//           p.lastName AS lastName,
//           mp.movie.id AS movieId,
//           mp.career.id AS careerId
//    FROM Person p
//    JOIN MoviePerson mp ON mp.person.id = p.id
//    WHERE mp.movie.id IN :movieIds
//    ORDER BY mp.actorPriorityLevel
//    """)
//    List<PersonProjection> findPeopleByMovies(@Param("movieIds") List<Long> movieIds);
//
//    @Query("SELECT p FROM Person p " +
//           "LEFT JOIN FETCH p.genres " +
//           "LEFT JOIN FETCH p.careers " +
//           "LEFT JOIN FETCH p.country " +
//           "WHERE p.id = :personId ")
//    Person findPersonById(@Param("personId") Long personId);
}
