<%@ page import="passdentistry.Announcement" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin">
    <title>Announcements</title>
</head>

<body>

<div class="nav" role="navigation">
    <ul>
        <li><g:link class="create" action="create">Create</g:link></li>
    </ul>
</div>

<div id="list-announcement" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="default">
        <thead>
        <tr>

            <g:sortableColumn property="title" title="Title"/>

            <g:sortableColumn property="announcement"
                              title="Text"/>

            <g:sortableColumn property="date" title="Date"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${announcementInstanceList}" status="i" var="announcementInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${announcementInstance.id}">${fieldValue(bean: announcementInstance, field: "title")}</g:link></td>

                <td>${fieldValue(bean: announcementInstance, field: "announcement")}</td>

                <td><g:formatDate date="${announcementInstance.date}"/></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${announcementInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
