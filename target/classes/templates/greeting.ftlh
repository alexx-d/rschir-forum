<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">

<@c.page>
    <h5>Hello, <#if user??>${name}<#else>guest</#if></h5>
    <div>This is a simple Forum</div>
</@c.page>