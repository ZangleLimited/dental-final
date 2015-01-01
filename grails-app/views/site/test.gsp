<!DOCTYPE HTML>
<html>
<head>
    <meta name="layout" content="main"/>
    <h1 id="logo"><g:link action="index">Take a Test</g:link></h1>
    <p>${params.id}</p>
</head>
<body class="homepage">

<!-- Main -->
<div id="main-wrapper">
    <div id="main" class="container">
        <div class="row">

            <!-- Content -->
            <div id="content" class="8u">

                <!-- Post -->
                <article class="box post">
                    <ul class="actions">
                        <li><g:link class="button icon fa-file" action="startTest" params="[category: params.category]">Take a test!</g:link></li>
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