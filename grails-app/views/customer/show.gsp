
<%@ page import="passdentistry.Customer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<title>Customer</title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="edit" action="edit" resource="${customerInstance}">Edit</g:link></li>
				<li><g:link class="list" action="index">List</g:link></li>
				<li><g:link class="create" action="create">Create</g:link></li>
			</ul>
		</div>
		<div id="show-customer" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list customer">
			
				<g:if test="${customerInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label">Email:</span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${customerInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label">Password:</span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${customerInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.results}">
				<li class="fieldcontain">
					<span id="results-label" class="property-label">Results:</span>
					
						<g:each in="${customerInstance.results}" var="r">
						<span class="property-value" aria-labelledby="results-label"><g:link controller="result" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:customerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:actionSubmit class="delete" action="delete" value="Delete" onclick="return confirm('Are you sure?');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
