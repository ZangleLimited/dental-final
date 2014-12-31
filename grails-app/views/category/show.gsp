<%@ page import="passdentistry.Category" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin">
    <title>Category</title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>

        <li><g:link class="list" action="index">List</g:link></li>
        <li><g:link class="create" action="create">Create</g:link></li>
        <li><g:link class="edit" action="edit" resource="${categoryInstance}">Edit</g:link></li>
    </ul>
</div>

<div id="show-category" class="content scaffold-show" role="main">
    <h1>Category</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list category">

        <g:if test="${categoryInstance?.name}">
            <li class="fieldcontain">
                <span id="name-label" class="property-label">Name:</span>

                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${categoryInstance}"
                                                                                        field="name"/></span>

            </li>
        </g:if>

        <g:if test="${categoryInstance?.exams}">
            <li class="fieldcontain">
                <span id="exams-label" class="property-label">Exams:</span>

                <g:each in="${categoryInstance.exams}" var="e">
                    <span class="property-value" aria-labelledby="exams-label"><g:link controller="exam" action="show"
                                                                                       id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${categoryInstance?.questions}">
            <li class="fieldcontain">
                <span id="questions-label" class="property-label">Questions:</span>

                <ul>
                    <g:each in="${categoryInstance.questions}" var="questions">
                        <li>
                            <span class="property-value" aria-labelledby="questions-label"><g:link controller="question"
                                                                                                   action="show"
                                                                                                   id="${questions.id}">${questions?.encodeAsHTML()}</g:link></span>
                        </li>
                    </g:each>
                </ul>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: categoryInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:actionSubmit class="delete" action="delete"
                            value="Delete"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
