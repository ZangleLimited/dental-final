<%@ page import="passdentistry.Question" %>



<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'question', 'error')} required">
	<label for="question">
		<g:message code="question.question.label" default="Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="question" required="" value="${questionInstance?.question}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'answers', 'error')} ">
	<label for="answers">
		<g:message code="question.answers.label" default="Answers" />
		
	</label>
	<g:select name="answers" from="${passdentistry.Answer.list()}" multiple="multiple" optionKey="id" size="5" value="${questionInstance?.answers*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="question.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${passdentistry.Category.list()}" optionKey="id" required="" value="${questionInstance?.category?.id}" class="many-to-one"/>

</div>

