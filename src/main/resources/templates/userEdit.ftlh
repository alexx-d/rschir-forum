<#import "parts/common.ftlh" as c>

<@c.page>
    <h3>User editor</h3>

    <form action="/user" method="post">
        <input readonly class="form-control w-25" type="text" name="username" value="${user.username}">
        <div class="my-2">
            <#list roles as role>
                <div>
                    <input class="form-check-input" type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")} id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                        ${role}
                    </label>
                </div>
            </#list>
            <input type="hidden" value="${user.id}" name="userId">
            <input type="hidden" value="${_csrf.token}" name="_csrf">
        </div>
        <button class="btn btn-primary" type="submit">Save</button>
    </form>
</@c.page>