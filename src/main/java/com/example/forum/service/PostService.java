package com.example.forum.service;

import com.example.forum.domain.Post;
import com.example.forum.domain.User;
import com.example.forum.domain.dto.PostDto;
import com.example.forum.repositories.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class PostService {
    @Autowired
    private PostRepository postRepository;

    public Page<PostDto> postList(Pageable pageable, String filter, User user) {
        if (filter != null && !filter.isEmpty()) {
            return postRepository.findByTag(filter, pageable, user);
        } else {
            return postRepository.findAll(pageable, user);
        }
    }

    public Page<PostDto> postListForUser(Pageable pageable, User author, User currentUser) {
        if (currentUser.equals(author)) {
            return postRepository.findByUser(pageable, author);
        } else {
            return postRepository.findByUser(pageable, author, currentUser);
        }
    }
}