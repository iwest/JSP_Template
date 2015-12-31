<%@tag description="Layout template for a page with header, body, and footer" pageEncoding="utf-8"%>
<%@attribute name="title" required="true" type="java.lang.String"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>${title}</title>

    <link href="<c:url value="/res/css/foundation.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/res/css/normalize.css"/>" rel="stylesheet">
    <link href="<c:url value="/res/css/app.css"/>" rel="stylesheet">
    <script src="<c:url value="/res/js/vendor/modernizr-2.8.3.js"/>"></script>
</head>
<body>
    <header class="fixed">
        <div class="title-bar" data-responsive-toggle="topbar" data-hide-for="medium">
            <button class="menu-icon" type="button" data-toggle></button>
            <div class="title-bar-title">Menu</div>
        </div>

        <nav class="top-bar" id="topbar">
            <div class="top-bar-left">
                <ul class="vertical medium-horizontal menu" data-dropdown-menu>
                    <li class="menu-text"><a href="<c:url value="/"/>">TestEE</a></li>
                    <li><a href="<c:url value="/"/>">Index</a></li>
                    <li><a href="<c:url value="/Test"/>">Callout Test</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <c:if test="${not empty requestScope.alerts}">
        <section>
            <c:forEach var="alert" items="${requestScope.alerts}">
                <div class="row">
                    <div class="column">
                        <div class="${pageScope.alert.type} callout margin-bottom-0" data-closable>
                            <p class="margin-bottom-0">${pageScope.alert.message}</p>
                            <!--
                                Button's onclick is a temporary solution to buggy Foundation js
                                Note the nonfunctional close button on
                                    http://foundation.zurb.com/sites/docs/close-button.html
                            -->
                            <button
                                    onclick="$(this).parent().remove()"
                                    class="close-button" aria-label="Dismiss alert" type="button" data-close>
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </section>
    </c:if>

    <section>
        <div class="row">
            <div class="column">
                <h3>${title}</h3>
            </div>
        </div>
        <jsp:doBody/>
    </section>

    <footer class="row text-center">
        <div class="column">
            <hr />
            <span>&copy; 2015 Isaac West</span>
        </div>
    </footer>

    <script src="<c:url value="/res/js/vendor/jquery.min.js"/>"></script>
    <script src="<c:url value="/res/js/vendor/fastclick.js"/>"></script>
    <script src="<c:url value="/res/js/foundation.min.js"/>"></script>
    <script src="<c:url value="/res/js/app.js"/>"></script>
</body>
</html>