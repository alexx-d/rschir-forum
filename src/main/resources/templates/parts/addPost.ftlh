<a class="btn btn-primary my-3" data-bs-toggle="collapse" href="#kek" role="button" aria-expanded="false" aria-controls="kek">
    Add new post
</a>
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
                           name="text" placeholder="Add content" required rows="10"></textarea>
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
                <input class="form-control" type="file" name="file"  accept=".jpg, .jpeg, .png, .gif, .webp">
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <input type="hidden" name="id" value="<#if post??>${post.id}<#else>-1</#if>" />
            <div class="form-group mb-5">
                <button type="submit" class="btn btn-primary">Save post</button>
            </div>
        </form>
    </div>
</div>