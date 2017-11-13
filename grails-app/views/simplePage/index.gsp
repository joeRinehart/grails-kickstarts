
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
    <div class="jumbotron">
        <h1>Navbar example</h1>
        <p class="lead">This example is a quick exercise to illustrate how fixed to top navbar works. As you scroll, it will remain fixed to the top of your browser's viewport.</p>
    </div>
    <div class="row">
        <div class="col-6">
            <oauth2:connect provider="google" id="google-connect-link">Google</oauth2:connect>

            Logged with google?
            <oauth2:ifLoggedInWith provider="google">yes</oauth2:ifLoggedInWith>
            <oauth2:ifNotLoggedInWith provider="google">no</oauth2:ifNotLoggedInWith>
        </div>
        <div class="col-6">
            <oauth2:connect provider="facebook" id="facebook-connect-link">Facebook</oauth2:connect>

            Logged with facebook?
            <oauth2:ifLoggedInWith provider="facebook">yes</oauth2:ifLoggedInWith>
            <oauth2:ifNotLoggedInWith provider="facebook">no</oauth2:ifNotLoggedInWith>
        </div>
    </div>
</main>


</body>
</html>
