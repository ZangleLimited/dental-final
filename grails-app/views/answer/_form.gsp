<%@ page import="passdentistry.Answer" %>



<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'isCorrect', 'error')} ">
	<label for="isCorrect">
		<g:message code="answer.isCorrect.label" default="Is Correct" />
		
	</label>
	<g:checkBox name="isCorrect" value="${answerInstance?.isCorrect}" />

</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'answer', 'error')} required">
	<label for="answer">
		<g:message code="answer.answer.label" default="Answer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="answer" required="" value="${answerInstance?.answer}"/>

</div>

