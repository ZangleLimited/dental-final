<%@ page import="passdentistry.Question" %>
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
        <li><g:link class="create" action="create">New</g:link></li>
        <li><g:link class="edit" action="edit" resource="${questionInstance}">Edit</g:link></li>
    </ul>
</div>

<div id="show-question" role="main">
    <h1><g:fieldValue
            bean="${questionInstance}" field="question"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list question">

        <g:if test="${questionInstance?.answers}">

            <li class="fieldcontain">
                <span id="answers-label" class="property-label">Answers:</span>
                <ul>
                    <g:each in="${questionInstance.answers}" var="answer">
                        <li>
                            <span class="property-value" aria-labelledby="answers-label">
                                <g:link controller="answer"
                                        action="show"
                                        id="${answer.id}">${answer?.encodeAsHTML()}</g:link></span>
                        </li>
                    </g:each>
                </ul>
            </li>
        </g:if>

        <g:if test="${questionInstance?.category}">
            <li class="fieldcontain">
                <span id="category-label" class="property-label">Category:</span>
                <span class="property-value" aria-labelledby="category-label">
                    <g:link controller="category"
                            action="show"
                            id="${questionInstance?.category?.id}">${questionInstance?.category?.encodeAsHTML()}</g:link>
                </span>
            </li>
        </g:if>

    </ol>
    <g:form url="[resource: questionInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:actionSubmit class="delete" action="delete"
                            value="Delete"
                            onclick="return confirm('Are you sure?');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
