<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:layout title="Callout Test Page">
    <t:bodyPanel>
        <p>Message parameter: ${requestScope.message}</p>
        <p>Type parameter: ${requestScope.type}</p>
        <p>Use the form below to add a callout to the page.</p>
        <form action="<c:url value="/Test"/>" method="GET">
            <div class="row">
                <div class="small-6 columns">
                    <label>Message
                        <input type="text" name="message"/>
                    </label>
                </div>
                <div class="small-6 columns">
                    <label>Type
                        <select name="type">
                            <option value="primary">Primary (Info)</option>
                            <option value="success">Success</option>
                            <option value="warning">Warning</option>
                            <option value="alert">Alert</option>
                            <option value="secondary">Secondary</option>
                        </select>
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="small-4 small-offset-8 columns end">
                    <button type="submit" class="button expanded">Submit</button>
                </div>
            </div>
        </form>
    </t:bodyPanel>
</t:layout>