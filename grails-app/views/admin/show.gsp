<%@ page import="passdentistry.Admin" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin">
    <title>Admin</title>
</head>

<body>

<div class="nav" role="navigation">
    <ul>
        <li><g:link class="edit" action="edit" resource="${adminInstance}">Edit</g:link></li>
        <li><g:link class="list" action="index">List</g:link></li>
        <li><g:link class="create" action="create">Create</g:link></li>
    </ul>
</div>

<div id="show-admin" class="content scaffold-show" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list admin">

        <g:if test="${adminInstance?.email}">
            <li class="fieldcontain">
                <span id="email-label" class="property-label">Email</span>

                <span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${adminInstance}"
                                                                                         field="email"/></span>

            </li>
        </g:if>

        <g:if test="${adminInstance?.password}">
            <li class="fieldcontain">
                <span id="password-label" class="property-label">Password</span>

                <span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${adminInstance}"
                                                                                            field="password"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: adminInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">

            <g:actionSubmit class="delete" action="delete"
                            value="Delete"
                            onclick="return confirm('Are you sure?');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
