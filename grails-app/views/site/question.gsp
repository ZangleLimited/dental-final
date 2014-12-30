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
                <g:form url="[resource: site, action: 'nextQuestion']" method="PUT">
                    <h3></h3>

                    <div id="list-question" class="content scaffold-list" role="main">
                        <ul>
                            <g:each in="${question.answers}" var="answer">
                                <li>
                                    ${answer.answer}
                                </li>
                            </g:each>
                        </ul>
                    </div>

                    <g:actionSubmit class="button icon fa-file" action="nextQuestion" value="Next"/>
                </g:form>
            </div>

            <!-- Sidebar -->
            <div id="sidebar" class="4u">

                <!-- Excerpts -->
                <section>
                    <ul class="divided">
                        <li>

                            <!-- Excerpt -->
                            <article class="box excerpt">
                                <header>
                                    <span class="date">July 30</span>

                                    <h3><a href="#">Just another post</a></h3>
                                </header>

                                <p>Lorem ipsum dolor odio facilisis convallis. Etiam non nunc vel est
                                suscipit convallis non id orci lorem ipsum sed magna consequat feugiat lorem dolore.</p>
                            </article>

                        </li>
                        <li>

                            <!-- Excerpt -->
                            <article class="box excerpt">
                                <header>
                                    <span class="date">July 28</span>

                                    <h3><a href="#">And another post</a></h3>
                                </header>

                                <p>Lorem ipsum dolor odio facilisis convallis. Etiam non nunc vel est
                                suscipit convallis non id orci lorem ipsum sed magna consequat feugiat lorem dolore.</p>
                            </article>

                        </li>
                        <li>

                            <!-- Excerpt -->
                            <article class="box excerpt">
                                <header>
                                    <span class="date">July 24</span>

                                    <h3><a href="#">One more post</a></h3>
                                </header>

                                <p>Lorem ipsum dolor odio facilisis convallis. Etiam non nunc vel est
                                suscipit convallis non id orci lorem ipsum sed magna consequat feugiat lorem dolore.</p>
                            </article>

                        </li>
                    </ul>
                </section>

            </div>

        </div>
    </div>
</div>

<!-- Footer -->
<div id="footer-wrapper">
    <div id="copyright" class="container">
        <ul class="links">
            <li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
            <a href="http://www.freepik.com/free-vector/dental-care-tooth-icons_722694.htm">Designed by Freepik</a>
        </ul>
    </div>
</div>

</body>
</html>