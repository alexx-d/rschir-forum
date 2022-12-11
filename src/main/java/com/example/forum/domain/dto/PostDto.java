package com.example.forum.domain.dto;


import com.example.forum.domain.Post;
import com.example.forum.domain.User;
import com.example.forum.domain.util.PostHelper;

import java.util.Date;

public class PostDto {
    private Long id;
    private String title;

    private Date createdDate;

    private String text;
    private String tag;
    private User author;
    private String filename;
    private Long likes;
    private Boolean meLiked;

    public PostDto(Post post, Long likes, Boolean meLiked) {
        this.id = post.getId();
        this.title = post.getTitle();
        this.text = post.getText();
        this.createdDate = post.getCreatedDate();
        this.tag = post.getTag();
        this.author = post.getAuthor();
        this.filename = post.getFilename();
        this.likes = likes;
        this.meLiked = meLiked;
    }

    public String getAuthorName() {
        return PostHelper.getAuthorName(author);
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getText() {
        return text;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public String getTag() {
        return tag;
    }

    public User getAuthor() {
        return author;
    }

    public String getFilename() {
        return filename;
    }

    public Long getLikes() {
        return likes;
    }

    public Boolean getMeLiked() {
        return meLiked;
    }

    @Override
    public String toString() {
        return "postDto{" +
                "id=" + id +
                ", author=" + author +
                ", likes=" + likes +
                ", meLiked=" + meLiked +
                '}';
    }
}