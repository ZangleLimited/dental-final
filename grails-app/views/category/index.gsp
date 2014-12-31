
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
				<li><g:link class="create" action="create">Create</g:link></li>
			</ul>
		</div>
		<div id="list-category" class="content scaffold-list" role="main">
			<h1>Category</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="default">
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'category.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${categoryInstanceList}" status="i" var="categoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${categoryInstance.id}">${fieldValue(bean: categoryInstance, field: "name")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${categoryInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
