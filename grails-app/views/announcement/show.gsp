<%@ page import="passdentistry.Announcement" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin">
    <title>Announcement</title>
</head>

<body>

<div class="nav" role="navigation">
    <ul>
        <li><g:link class="edit" action="edit" resource="${announcementInstance}">Edit</g:link></li>
        <li><g:link class="list" action="index">List</g:link></li>
        <li><g:link class="create" action="create">Create</g:link></li>
    </ul>
</div>

<div id="show-announcement" class="content scaffold-show" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list announcement">

        <g:if test="${announcementInstance?.title}">
            <li class="fieldcontain">
                <span id="title-label" class="property-label">Title</span>

                <span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${announcementInstance}"
                                                                                         field="title"/></span>

            </li>
        </g:if>

        <g:if test="${announcementInstance?.announcement}">
            <li class="fieldcontain">
                <span id="announcement-label" class="property-label">Text</span>

                <span class="property-value" aria-labelledby="announcement-label"><g:fieldValue
                        bean="${announcementInstance}" field="announcement"/></span>

            </li>
        </g:if>

        <g:if test="${announcementInstance?.date}">
            <li class="fieldcontain">
                <span id="date-label" class="property-label">Date</span>

                <span class="property-value" aria-labelledby="date-label"><g:formatDate
                        date="${announcementInstance?.date}"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: announcementInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:actionSubmit class="delete" action="delete"
                            value="Delete"
                            onclick="return confirm('Are you sure?');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
