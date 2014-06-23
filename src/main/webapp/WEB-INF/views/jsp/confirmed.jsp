<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <link rel="stylesheet" href="<spring:url value="/static/css/bootstrap.min.css"/>"/>
    <style>
        body {
            padding-top: 10px;
            padding-bottom: 20px;
        }
    </style>
    <link rel="stylesheet" href="<spring:url value="/static/css/bootstrap-theme.min.css"/>"/>
    <link rel="stylesheet" href="<spring:url value="/static/css/main.css"/>"/>

    <script src="<spring:url value="/static/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"/>"></script>
</head>
<body>
<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->
<div class="navbar">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><img src="<spring:url value="/static/img/logo_delmar.gif"/>" alt="Delmar International Inc" height="42" border="0" width="157" /></a>
        </div>
    </div>
</div>

<div class="visible-print pull-right clearfix" ><img src="<spring:url value="/static/img/logo_delmar.gif"/>" alt="Delmar International Inc" height="42" border="0" width="157" />
</div>

<div class="container">
    <h4>Your subscription is updated.</h4>
</div>

<div class="container">
    <footer>
        <p>&copy; Delmar International Inc, 2014</p>
    </footer>
</div> <!-- /container -->
<script>window.jQuery || document.write('<script src="<spring:url value="/static/js/vendor/jquery-1.10.1.min.js"/>"><\/script>')</script>

<script src="<spring:url value="/static/js/vendor/bootstrap.min.js"/>"></script>
<script src="<spring:url value="/static/js/plugins.js"/>"></script>
<script src="<spring:url value="/static/js/main.js"/>"></script>

</body>
</html>
