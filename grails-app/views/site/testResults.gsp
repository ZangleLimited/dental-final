<!DOCTYPE HTML>
<html>
<head>
    <meta name="layout" content="main"/>

    <h1>Results</h1>
</head>

<body class="homepage">

<!-- Main -->
<div id="main-wrapper">
    <div id="main" class="container">
        <div class="row">

            <!-- Content -->
            <div id="content" class="8u">
                    <h3></h3>

                    <div id="list-question" class="content scaffold-list" role="main">
                        <ul>
                            <g:each in="${results}" var="result">
                                <li>
                                    <g:if test="${result.isPass}">
                                        <span class="icon fa-check" style="color: green"></span>
                                    </g:if>
                                    <g:else>
                                        <span class="icon fa-close" style="color: red"></span>
                                    </g:else>
                                    ${result.question.question}
                                </li>
                            </g:each>
                        </ul>
                    </div>

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