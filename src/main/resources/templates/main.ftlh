<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <form method="get" action="/main" class="d-flex" role="search" >
        <input class="form-control me-2" type="search" placeholder="Search by tag" value="${filter!}" name="filter" aria-label="Search">
        <button class="btn btn-primary" type="submit">Search</button>
    </form>

    <#include "parts/addPost.ftlh" />

    <#include "parts/postList.ftlh" />

</@c.page>