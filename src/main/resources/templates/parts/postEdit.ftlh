<#include "security.ftlh">
<div <#if (post.id)??><#else>style="display:none"</#if>>
<a class="btn btn-primary" data-bs-toggle="collapse" href="#kek" role="button" aria-expanded="false" aria-controls="kek">
    Post editor
</a>
</div>
<div class="collapse <#if post??>show</#if>" id="kek">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group mb-2">
                <input type="text" class="form-control"
                       value="<#if post??>${post.title}</#if>" name="title" placeholder="Title">
                <#if titleError??>
                    <div class="invalid-feedback">
                        ${titleError}
                    </div>
                </#if>
            </div>
            <div class="form-group mb-2">
                <textarea  class="form-control ${(textError??)?string('is-invalid', '')}"
                           name="text" placeholder="Add content" required rows="10"><#if post??>${post.text}</#if></textarea>
                <#if textError??>
                    <div class="invalid-feedback">
                        ${textError}
                    </div>
                </#if>
            </div>
            <div class="form-group mb-2">
                <input type="text" class="form-control"
                       value="<#if post??>${post.tag}</#if>" name="tag" placeholder="Tag">
                <#if tagError??>
                    <div class="invalid-feedback">
                        ${tagError}
                    </div>
                </#if>
            </div>
            <div class="form-group mb-2">
                <input class="form-control" type="file" name="file" accept=".jpg, .jpeg, .png, .gif, .webp">
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <input type="hidden" name="id" value="<#if post??>${post.id}<#else>-1</#if>" />
            <div class="form-check form-check-reverse">
                <input class="form-check-input" type="checkbox" name="delete" id="flexCheckDefault">
                <label class="form-check-label text-danger" for="flexCheckDefault">
                    Delete Post
                </label>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Save post</button>
            </div>
        </form>
    </div>
</div>