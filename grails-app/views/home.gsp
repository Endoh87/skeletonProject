<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>

<div id="content" role="main">
    <section class="row colset-2-its">
        <h1>Welcome to Skeleton Project</h1>

        <p>
            This a premade ${user} project structure to start creating an APP easier.
            <g:textField type="text" class="text_" name="username" id="username" value="${user}"/>
            <g:passwordField type="password" class="text_" name="password" id="password" value="${password}"/>

            <g:if test="${user == 'admin'}" test="${password == 'admin'}" >
                <div id="controllers" role="navigation">
                    <h2>Available Controllers:</h2>
                    <ul>
                        <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                            <li class="controller">
                                <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                            </li>
                        </g:each>
                    </ul>
                </div>

            </g:if>
             <g:else>
                 Hello ${user}! Password: ${password}?
             </g:else>


        </p>


    </section>
</div>

</body>
</html>
