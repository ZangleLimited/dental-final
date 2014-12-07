<!DOCTYPE HTML>
<!--
	Strongly Typed by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Passdentistry - Take a test</title>
</head>
<body class="homepage">

<!-- Header -->
<div id="header-wrapper">
    <div id="header" class="container">
        <!-- Nav -->
        <nav id="nav">
            <ul>
                <li><g:link action="index" class="icon fa-home"><span>Introduction</span></g:link></li>
                <li>
                    <a href="" class="icon fa-sitemap"><span>Browse Categories</span></a>
                    <ul>
                        <g:each in="${categories}">
                            <g:link action="test" id="${it.name}">${it.name}</g:link>
                        </g:each>
                    </ul>
                </li>
                <li><a class="icon fa-check-square-o" href="left-sidebar.html"><span>Take an Exam</span></a></li>
                <li><a class="icon fa-at" href="no-sidebar.html"><span>Sign in</span></a></li>
            </ul>
        </nav>

        <!-- Logo -->
        <h1 id="logo"><g:link action="index">Take a Test</g:link></h1>
    </div>
</div>

<!-- Main -->
<div id="main-wrapper">
    <div id="main" class="container">
        <div class="row">

            <!-- Content -->
            <div id="content" class="8u">

                <!-- Post -->
                <article class="box post">
                    <ul class="actions">
                        <li><a href="#" class="button icon fa-file">Take a test!</a></li>
                    </ul>
                </article>

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