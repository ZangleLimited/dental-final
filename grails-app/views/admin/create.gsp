<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin">
    <title>Admin</title>
</head>

<body>

<div class="nav" role="navigation">
    <ul>
        <li><g:link class="list" action="index">List</g:link></li>
    </ul>
</div>

<div id="create-admin" class="content scaffold-create" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${adminInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${adminInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form url="[resource: adminInstance, action: 'save']">
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save"
                            value="Create"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
