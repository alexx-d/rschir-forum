<#include "security.ftlh">
<#import "pager.ftlh" as p>

<div class="mx-auto">
    <#list page.content as post>
        <div class="card my-3">
            <div class="card-header">
                <div class="fs-6 fw-light">
                    <a href="/user-posts/${post.author.id}" class="text-decoration-none fs-5 fw-semibold" >${post.authorName}</a>
                    ${post.createdDate}
                </div>
                <div class="pt-1 fs-3 fw-bold lh-sm">${post.title}</div>
                <div class="fs-6 fw-light">#${post.tag}</div>
            </div>
            <#if post.filename??>
            <div style="height: 300px">
                    <img src="/img/${post.filename}" class="" style="width: 100%; height: 100%; object-fit: cover;	">
            </div>
            </#if>
            <div class="p-3" style="white-space: pre-line;">${(post.text)}</div>
            <div class="card-footer">
                <div class="row justify-content-around  align-items-center">
                    <a class="col text-decoration-none" href="/posts/${post.id}/like">
                        <#if post.meLiked>
                            <i class="fa-solid fa-heart"></i>
                        <#else>
                            <i class="fa-regular fa-heart"></i>
                        </#if>
                        ${post.likes}
                    </a>
                    <#if post.author.id == currentUserId>
                        <a class="btn btn-primary col-2" href="/user-posts/${post.author.id}?post=${post.id}">
                            Edit
                        </a>
                    </#if>
                </div>
            </div>
        </div>
    <#else>
        No post
    </#list>
</div>

<@p.pager url page />