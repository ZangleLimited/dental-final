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
        <li><g:link class="create" action="create">Create</g:link></li>
    </ul>
</div>

<div id="list-admin" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="default">
        <thead>
        <tr>

            <g:sortableColumn property="email" title="Email"/>

            <g:sortableColumn property="password"
                              title="Password"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${adminInstanceList}" status="i" var="adminInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${adminInstance.id}">${fieldValue(bean: adminInstance, field: "email")}</g:link></td>

                <td>${fieldValue(bean: adminInstance, field: "password")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${adminInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
