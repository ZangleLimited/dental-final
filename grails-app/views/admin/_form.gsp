<%@ page import="passdentistry.Admin" %>



<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'email', 'error')} required">
    <label for="email">
        <g:message code="admin.email.label" default="Email"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="email" name="email" required="" value="${adminInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'password', 'error')} required">
    <label for="password">
        <g:message code="admin.password.label" default="Password"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="password" name="password" required="" value="${adminInstance?.password}"/>

</div>

