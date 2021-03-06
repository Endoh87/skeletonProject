<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Skeleton Project"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>
<body>

<div class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/#">
                <i class="fa grails-icon">
                    <asset:image src="skeleton-logo.jpg"/>
                </i> Skeleton Project
            </a>
        </div>
        <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
            <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Secure Zone <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Environment: ${grails.util.Environment.current.name}</a></li>
                            <li><a href="#">App profile: ${grailsApplication.config.grails?.profile}</a></li>
                            <li><a href="#">App version:
                                <g:meta name="info.app.version"/></a>
                            </li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Grails version:
                                <g:meta name="info.app.grailsVersion"/></a>
                            </li>
                            <li><a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>
                            <li><a href="#">JVM version: ${System.getProperty('java.version')}</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Api test <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Controllers: ${grailsApplication.controllerClasses.size()}</a></li>
                            <li><a href="#">Domains: ${grailsApplication.domainClasses.size()}</a></li>
                            <li><a href="#">Services: ${grailsApplication.serviceClasses.size()}</a></li>
                            <li><a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">My account <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <sec:ifNotLoggedIn>
                                <div id="buttons">
                                    <div id="login"><g:link controller="login" action="auth">Login</g:link>
                                    <div id="register"><g:link controller="logout" action="index">Register</g:link>
                                </div>
                            </sec:ifNotLoggedIn>
                            <sec:ifLoggedIn>

                                <div id="greet">Hello ${user}!</div>
                                  <div id="logout"><g:link controller="logout" action="index">Register</g:link>

                            </sec:ifLoggedIn>
                        </ul>
                    </li>
            </ul>
        </div>
    </div>
</div>

<div class="svg" role="presentation">
    <div class="grails-logo-container">
        <asset:image src="skeleton-logo.jpg" class="grails-logo"/>
    </div>
</div>
<div class="left-container">
    <h1>Left Container</h1>

</div>
<div class="right-container">
    <h1>Right Container</h1>
</div>
<div class="center-news" align="center">

</div>

    <g:layoutBody/>


    <div class="footer" role="contentinfo">Copyright © Skeleton Project</div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>

</body>
</html>
