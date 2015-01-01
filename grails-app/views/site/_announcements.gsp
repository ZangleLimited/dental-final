<%@ page import="passdentistry.Announcement" %>


<section>
    <ul class="divided">

        <g:each in="${announcements}" var="announcement">
            <article class="box excerpt">
                <header>
                    <span class="date">${announcement.displayDate()}</span>
                    <h3><a href="#">${announcement.title}</a></h3>
                </header>
                <p>${announcement.announcement}</p>
            </article>
        </g:each>

    </ul>
</section>
