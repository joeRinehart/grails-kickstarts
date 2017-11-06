<!DOCTYPE html>
<html lang="en">
<head>
    <meta class="anchor" name="layout" content="main">
    <meta class="anchor" name="description" content="">
    <meta class="anchor" name="author" content="">

    <title>JavaScript</title>

    <style>
        h1:not(:first-child), h2:not(:first-child), h3:not(:first-child) {
            margin-top: 2rem;
        }

        .example-content {
            min-height: 400px;
            max-height: 400px;
            overflow: scroll;
            border-left: 1px solid #ddd;
            border-right: 1px solid #ddd;
            border-bottom: 1px solid #ddd;
            padding:5px 16px 5px 16px;
            margin-bottom:10px;
        }
        .example-content-sm {
            min-height: 200px;
            max-height: 200px;
        }
        .example-content-xs {
            min-height: 100px;
            max-height: 100px;
        }

        a.anchor {
            display: block;
            position: relative;
            top: -60px;
            visibility: hidden;
        }

    </style>
</head>

<body>

<div class="container-fluid">
    <div class="row flex-md-nowrap">
        <div class="col-md-2 position-sticky d-none d-sm-none d-md-block">
            <div class="fixed-top" style="margin-top:75px;max-width:320px;">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">JavaScript</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#modals">Modals</a>
                    </li>
                </ul>
            </div>
        </div>

    <main class="col-md-10">
        <h1>What's Included?</h1>

        <p>Adding a few little JavaScript wrappers for Bootstrap components and other UI niceties have helped us give
        our users better-looking, more responsive and increasingly consistent experiences.</p>

        <a class="anchor" name="modals"></a>
        <h2>Modal Replacements for window.alert(), window.confirm, etc.</h2>

        <h3>Alert</h3>
        <p>We've wrapped the JavaScript "alert" method with a BootStrap modal-based replacement that allows you to add
        a title and control the button text.</p>

        <bp:tabs id="alert-component">
            <bp:tab id="alert-component-example" active="true" label="Demo" class="example-content example-content-sm">
                <script>
                    function showAlert() {
                        kickstart.bootstrap.alert("Houston, we have a problem!", "Alert! Alert!")
                            .then(function() {
                                $('#alert-success').addClass('show')
                            })
                    }
                </script>

                <bp:alert id="alert-success" intent="success" dismissable="true" class="fade">You closed the alert!</bp:alert>

                <button type="button" class="btn btn-primary" onclick="showAlert()">Alert me!</button>
            </bp:tab>
            <bp:tab id="alert-component-source" label="Source" class="example-content">
                <pre><code>&lt;script&gt;
    function showAlert() {
        kickstart.bootstrap.alert("Houston, we have a problem!", "Alert! Alert!")
            .then(function() {
                $('#alert-success').addClass('show')
            })
    }
&lt;/script&gt;

&lt;bp:alert id="alert-success" intent="success" dismissable="true" class="fade"&gt;You closed the alert!&lt;/bp:alert&gt;

&lt;button type="button" class="btn btn-primary" onclick="showAlert()"&gt;Alert me!&lt;/button&gt;</code></pre>
            </bp:tab>
        </bp:tabs>

        <h3>Confirm</h3>
        <p>We've wrapped the JavaScript "confirm" method with a BootStrap modal-based replacement that allows you to add
        a title and control the buttons' text.</p>

        <bp:tabs id="confirm-component">
            <bp:tab id="confirm-component-example" active="true" label="Demo" class="example-content example-content-sm">
                <script>
                    function showConfirm() {
                        kickstart.bootstrap.confirm("Should we do it?", "Dare we?", "Send it!", "No no no!")
                            .then(function(confirmed) {
                                $('#confirm-result')
                                    .text("Confirmed: " + confirmed)
                                    .addClass('show')
                            })
                    }
                </script>

                <bp:alert id="confirm-result" intent="success" dismissable="true" class="fade"></bp:alert>

                <button type="button" class="btn btn-primary" onclick="showConfirm()">Confirm it!</button>
            </bp:tab>
            <bp:tab id="confirm-component-source" label="Source" class="example-content">
                <pre><code>&lt;script&gt;
    function showConfirm() {
        kickstart.bootstrap.confirm("Should we do it?", "Dare we?", "Send it!", "No no no!")
            .then(function(confirmed) {
                $('#confirm-result')
                    .text("Confirmed: " + confirmed)
                    .addClass('show')
            })
    }
&lt;/script&gt;

&lt;bp:alert id="confirm-result" intent="success" dismissable="true" class="fade"&gt;&lt;/bp:alert&gt;

&lt;button type="button" class="btn btn-primary" onclick="showConfirm()"&gt;Confirm it!&lt;/button&gt;</code></pre>
            </bp:tab>
        </bp:tabs>

        <h3>Prompt</h3>
        <p>We've wrapped the JavaScript window.prompt() function with a BootStrap modal-based replacement that allows 
        you to present a proper one-field form. Its argument list may look intimidating, but only the first is required.</p>

        <bp:tabs id="prompt-component">
            <bp:tab id="prompt-component-example" active="true" label="Demo" class="example-content example-content-sm">
                <script>
                    function showPrompt() {
                        kickstart.bootstrap.prompt("What's your name?", "Name", "Your Name", "What people call you")
                            .then(function(prompted) {
                                $('#prompt-result')
                                    .text("Value: \"" + prompted.value + "\" / Modal was cancelled: " + prompted.cancelled)
                                    .addClass('show')
                            })
                    }
                </script>

                <bp:alert id="prompt-result" intent="success" dismissable="true" class="fade"></bp:alert>

                <button type="button" class="btn btn-primary" onclick="showPrompt()">prompt it!</button>
            </bp:tab>
            <bp:tab id="prompt-component-source" label="Source" class="example-content">
                <pre><code></code></pre>
            </bp:tab>
        </bp:tabs>

    </main>

    </div>
</div>

</body>
</html>
