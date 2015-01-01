<!DOCTYPE HTML>
<html>
<head>
    <meta name="layout" content="main"/>

    <h3>${question.question}</h3>
</head>

<body class="homepage">

<!-- Main -->
<div id="main-wrapper">
    <div id="main" class="container">
        <div class="row">

            <!-- Content -->
            <div id="content" class="8u">
                <h3>${correctAnswers} correct answer<g:if test="${correctAnswers > 1}">s</g:if></h3>

                <g:form url="[resource: site, action: 'nextQuestion']" method="PUT">
                    <div id="list-question" class="content scaffold-list" role="main">
                        <ul>
                            <g:each in="${question.answers}" var="answer">
                                <li>
                                    <p><g:checkBox name="${answer.id.toString()}" /> ${answer.answer}</p>
                                </li>
                            </g:each>
                        </ul>
                    </div>
                    <g:actionSubmit action="nextQuestion" value="Next"/>
                </g:form>
            </div>

            <div id="sidebar" class="4u">
                <g:render template="announcements"/>
            </div>

        </div>
    </div>
</div>

<g:render template="footer"/>

</body>
</html>