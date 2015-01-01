<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin">
    <title>Question</title>

    <script>
        $(document).ready(function() {
            var max_fields      = 10; //maximum input boxes allowed
            var wrapper         = $(".input_fields_wrap"); //Fields wrapper
            var add_button      = $(".add_field_button"); //Add button ID

            var x = 1; //initlal text box count
            $(add_button).click(function(e){ //on add input button click
                e.preventDefault();
                if(x < max_fields){ //max input box allowed
                    x++; //text box increment
                    $(wrapper).append('<div><input type="text" name="answer-' + x + '"/><a style="display: inline; padding-left: 1em" href="#" class="remove_field icon fa-close"></a></div>'); //add input box
                }
            });

            $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
                e.preventDefault(); $(this).parent('div').remove(); x--;
            })
        });
    </script>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><g:link class="list" action="index">List</g:link></li>
    </ul>
</div>

<div id="create-question" class="content scaffold-create" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${questionInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${questionInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form url="[resource: questionInstance, action: 'save']">
        <fieldset class="form">
            <div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'question', 'error')} required">
                <label for="question">
                    <g:message code="question.question.label" default="Question" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="question" required="" value="${questionInstance?.question}"/>

            </div>

            <div id="answers" class="fieldcontain ${hasErrors(bean: questionInstance, field: 'answers', 'error')}">
                <label for="answers">
                    <g:message code="question.answers.label" default="Answers" />

                </label>
                <div class="input_fields_wrap">
                    <a href="#" class="add_field_button icon fa-plus"></a>
                    <div><input type="text" name="answer-1"></div>
                </div>
            </div>

            <div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'category', 'error')} required">
                <label for="category">
                    <g:message code="question.category.label" default="Category" />
                    <span class="required-indicator">*</span>
                </label>
                <g:select id="category" name="category.id" from="${passdentistry.Category.list()}" optionKey="id" required="" value="${questionInstance?.category?.id}" class="many-to-one"/>

            </div>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save"
                            value="Create"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
