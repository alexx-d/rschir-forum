package com.example.forum.domain.util;

import com.example.forum.domain.User;

public abstract class PostHelper {
    public static String getAuthorName(User author) {
        return author != null ? author.getUsername() : "<none>";
    }
}