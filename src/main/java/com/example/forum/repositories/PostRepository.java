package com.example.forum.repositories;

import com.example.forum.domain.Post;
import com.example.forum.domain.User;
import com.example.forum.domain.dto.PostDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

// This will be AUTO IMPLEMENTED by Spring into a Bean called postRepository
// CRUD refers Create, Read, Update, Delete
public interface PostRepository extends CrudRepository<Post, Long> {

    @Query("select new com.example.forum.domain.dto.PostDto(" +
            "   m, " +
            "   count(ml), " +
            "   sum(case when ml = :user then 1 else 0 end) > 0" +
            ") " +
            "from Post m left join m.likes ml " +
            "group by m")
    Page<PostDto> findAll(Pageable pageable, @Param("user") User user);

    @Query("select new com.example.forum.domain.dto.PostDto(" +
            "   m, " +
            "   count(ml), " +
            "   sum(case when ml = :user then 1 else 0 end) > 0" +
            ") " +
            "from Post m left join m.likes ml " +
            "where m.tag = :tag " +
            "group by m")
    Page<PostDto> findByTag(@Param("tag") String tag, Pageable pageable, @Param("user") User user);

    @Query("select new com.example.forum.domain.dto.PostDto(" +
            "   m, " +
            "   count(ml), " +
            "   sum(case when ml = :user then 1 else 0 end) > 0" +
            ") " +
            "from Post m left join m.likes ml " +
            "where m.author = :author " +
            "group by m")
    Page<PostDto> findByUser(Pageable pageable, @Param("author") User author, @Param("user") User user);

    @Query("select new com.example.forum.domain.dto.PostDto(" +
            "   m, " +
            "   count(ml), " +
            "   sum(case when ml = :author then 1 else 0 end) > 0" +
            ") " +
            "from Post m left join m.likes ml " +
            "where m.author = :author " +
            "group by m")
    Page<PostDto> findByUser(Pageable pageable, @Param("author") User author);
}
