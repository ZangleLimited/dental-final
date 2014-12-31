<%@ page import="passdentistry.Answer" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin">
    <title>Answer</title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
    <li><g:link class="create" action="create">New</li></g:link>
        <li><g:link class="edit" action="edit" resource="${answerInstance}">Edit</g:link></li>
    </ul>
</div>

<div id="show-answer" class="content scaffold-show" role="main">
    <h1>Answer</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list answer">

        <g:if test="${answerInstance?.isCorrect}">
            <li class="fieldcontain">
                <span id="isCorrect-label" class="property-label">Is Correct:</span>
                <span class="property-value" aria-labelledby="isCorrect-label"><g:formatBoolean
                        boolean="${answerInstance?.isCorrect}"/></span>

            </li>
        </g:if>

        <g:if test="${answerInstance?.answer}">
            <li class="fieldcontain">
                <span id="answer-label" class="property-label">Answer:</span>
                <span class="property-value" aria-labelledby="answer-label"><g:fieldValue bean="${answerInstance}"
                                                                                          field="answer"/></span>
            </li>
        </g:if>

    </ol>
    <g:form url="[resource: answerInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:actionSubmit class="delete" action="delete"
                            value="Delete"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
