<%@ page import="passdentistry.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="category.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${categoryInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'exams', 'error')} ">
	<label for="exams">
		<g:message code="category.exams.label" default="Exams" />
		
	</label>
	<g:select name="exams" from="${passdentistry.Exam.list()}" multiple="multiple" optionKey="id" size="5" value="${categoryInstance?.exams*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'questions', 'error')} ">
	<label for="questions">
		<g:message code="category.questions.label" default="Questions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoryInstance?.questions?}" var="q">
    <li><g:link controller="question" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="question" action="create" params="['category.id': categoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'question.label', default: 'Question')])}</g:link>
</li>
</ul>


</div>

