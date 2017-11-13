<%@ page import="grails.util.Environment" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="main">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Fixed top navbar example for Bootstrap</title>
</head>

<body>

<main role="main" class="container-fluid">
    <div class="row">
        <div class="col-xs-12 offset-sm-3 col-sm-6">
            <h1>Please Log In</h1>

            <g:if test="${flash.message != null}">
                <bp:alert intent="danger">We're sorry, that wasn't quite right. Please try again.</bp:alert>
            </g:if>
            <hr />
            <g:form controller="login" action="authenticate" autocomplete="off" name="login-form">
                <bp:field label="Username">
                    <input type="text" class="form-control" name="username" id="login-username" autofocus />
                </bp:field>
                <bp:field label="Password">
                    <input type="password" class="form-control" name="password" id="login-password" />
                </bp:field>
                <div class="form-group row">
                    <div class="offset-md-3" style="padding-left:15px;">
                        <button type="submit" class="btn btn-primary">Ok</button>
                    </div>
                </div>

                <g:if test="${grails.util.Environment.current == grails.util.Environment.DEVELOPMENT}">
                    <h4 style="margin-top:25px;">Development Only:</h4>
                    <g:javascript>
                        kickstart_login_as = function(u, p) {
                            $('#login-username').val(u)
                            $('#login-password').val(p)
                            $('#login-form').submit()
                        }
                    </g:javascript>
                    <g:each in="${grailsApplication.config.kickstart.security.defaultUsers}" var="u">
                        <div class="form-group row">
                            <div class="offset-md-3" style="padding-left:15px;">
                                    <button type="button" class="btn btn-secondary" onclick="kickstart_login_as('${u.username}', '${u.password}')">Log in as '${u.username}'</button>
                            </div>
                        </div>
                    </g:each>
                </g:if>
            </g:form>
        </div>
    </div>
</main>

</body>
</html>
