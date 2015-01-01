<%@ page import="passdentistry.Announcement" %>



<div class="fieldcontain ${hasErrors(bean: announcementInstance, field: 'title', 'error')} required">
    <label for="title">
        <g:message code="announcement.title.label" default="Title"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="title" required="" value="${announcementInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: announcementInstance, field: 'announcement', 'error')} required">
    <label for="announcement">
        <g:message code="announcement.announcement.label" default="Announcement"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="announcement" required="" value="${announcementInstance?.announcement}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: announcementInstance, field: 'date', 'error')} required">
    <label for="date">
        <g:message code="announcement.date.label" default="Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="date" precision="day" value="${announcementInstance?.date}"/>

</div>

