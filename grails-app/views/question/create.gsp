<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin">
    <title>Question</title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><g:link class="list" action="index">List</g:link></li>
    </ul>
</div>

<div id="create-question" class="content scaffold-create" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${questionInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${questionInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form url="[resource: questionInstance, action: 'save']">
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
