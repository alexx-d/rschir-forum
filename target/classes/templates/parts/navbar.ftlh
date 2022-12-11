<#include "security.ftlh">
<#import "login.ftlh" as l>
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Forum</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="/">Home</a>
                </li>
                <#if user??>
                    <li class="nav-item">
                        <a class="nav-link" href="/main">Posts</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/user-posts/${currentUserId}">My posts</a>
                    </li>
                </#if>
                <#if isAdmin>
                    <li class="nav-item ms-3">
                        <a class="nav-link" href="/user">User list</a>
                    </li>
                </#if>
            </ul>

            <div class=" me-3"><#if user??><b><a class="nav-link text-decoration-underline" href="/user/profile">${name}</a></b></#if></div>
            <@l.logout />
        </div>
    </div>
</nav>