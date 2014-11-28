<!DOCTYPE HTML>
<!--
	Strongly Typed by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
    <title>Passdentistry</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <!--[if lte IE 8]><script src="js/ie/html5shiv.js" type="text/javascript"></script><![endif]-->
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/jquery.dropotron.min.js" type="text/javascript"></script>
    <script src="js/skel.min.js" type="text/javascript"></script>
    <script src="js/skel-layers.min.js" type="text/javascript"></script>
    <script src="js/init.js" type="text/javascript"></script>
    <noscript>
        <link rel="stylesheet" href="css/style-desktop.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/skel.css">
    </noscript>

    <!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css"><![endif]-->
</head>
<body class="homepage">

<!-- Header -->
<div id="header-wrapper">
    <div id="header" class="container">

        <!-- Logo -->
        <h1 id="logo"><img src="images/dentistry.png" width="75px" height="75px" style="margin-right: 20px"><a href="index.html">passdentistry</a></h1>
        <p>Helping you to succeed</p>

        <!-- Nav -->
        <nav id="nav">
            <ul>
                <li><a class="icon fa-home" href="index.html"><span>Introduction</span></a></li>
                <li>
                    <a href="" class="icon fa-sitemap"><span>Browse Categories</span></a>
                    <ul>
                        <g:each in="${categories}">
                            <li><a href="#">${it.name}</a></li>
                        </g:each>
                    </ul>
                </li>
                <li><a class="icon fa-check-square-o" href="left-sidebar.html"><span>Take an Exam</span></a></li>
                <li><a class="icon fa-at" href="no-sidebar.html"><span>Sign in</span></a></li>
            </ul>
        </nav>

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
                    <header>
                        <h2><a href="#">We want to help you <strong>succeed</strong> ...<br /></a></h2>
                    </header>
                    %{--<a href="#" class="image featured"><img src="assets/pic04.jpg" alt="" /></a>--}%
                    <p>Passdentistry is the first dentistry mock exam site of it's kind! Practice thousands of questions
                    that are relevant to dentistry students all around the world for <strong style="color: #3399FF">FREE</strong>.</p>

                    <p>
                        Our mock exams will give you fast feedback on how well you are doing. We can track how you are progressing over
                        time so you can feel confident you are moving towards your goal...
                    </p>
                    <ul class="actions">
                        <li><a href="#" class="button icon fa-file">Get Started</a></li>
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