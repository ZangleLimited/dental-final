<%@ page import="passdentistry.Exam" %>



<div class="fieldcontain ${hasErrors(bean: examInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="exam.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${examInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: examInstance, field: 'questions', 'error')} ">
	<label for="questions">
		<g:message code="exam.questions.label" default="Questions" />
		
	</label>
	<g:select name="questions" from="${passdentistry.Question.list()}" multiple="multiple" optionKey="id" size="5" value="${examInstance?.questions*.id}" class="many-to-many"/>

</div>

