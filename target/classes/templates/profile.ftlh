<#import "parts/common.ftlh" as c>

<@c.page>
    <h5>${username}</h5>
    ${message!}
    <form method="post" class="w-75">
        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
                <input type="password" name="password" placeholder="Password" class="form-control" id="inputPassword">
            </div>
        </div>

        <div class="mb-3 row">
            <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
                <input type="email" name="email" placeholder="some@some.com" value="${email!}" class="form-control" id="inputEmail">
                <div id="emailHelp" class="form-text">
                    After changing email, you will need
                    to confirm the profile by clicking on the link in the email. <br>
                    Sending an email takes some time, so after clicking the button below, wait a bit.
                </div>
            </div>
        </div>

        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-primary" type="submit">Save</button>
    </form>
</@c.page>