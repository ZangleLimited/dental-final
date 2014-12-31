<%@ page import="passdentistry.Question" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin">
    <title>Questions</title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><g:link class="create" action="create">Create</g:link></li>
    </ul>
</div>

<div id="list-question" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="default">
        <thead>
        <tr>

            <g:sortableColumn property="question"
                              title="Name"/>

            <th>Category</th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${questionInstanceList}" status="question" var="questionInstance">
            <tr class="${(question % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${questionInstance.id}">${fieldValue(bean: questionInstance, field: "question")}</g:link></td>

                <td>${fieldValue(bean: questionInstance, field: "category")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${questionInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
