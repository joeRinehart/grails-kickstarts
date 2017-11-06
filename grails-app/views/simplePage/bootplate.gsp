<!DOCTYPE html>
<html lang="en">
<head>
    <meta class="anchor" name="layout" content="main">
    <meta class="anchor" name="description" content="">
    <meta class="anchor" name="author" content="">

    <title>Bootplate</title>

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

<%
    Map bootstrapContexts = [
        'Primary': 'primary',
        'Secondary': 'secondary',
        'Success': 'success',
        'Danger': 'danger',
        'Warning': 'warning',
        'Info': 'info',
        'Light': 'light',
        'Dark': 'dark'
    ]
%>

<body>

<div class="container-fluid">
    <div class="row flex-md-nowrap">
        <div class="col-md-2 position-sticky d-none d-sm-none d-md-block">
            <div class="fixed-top" style="margin-top:75px;max-width:320px;">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Bootplate</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#forms">Forms</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#modals">Modals</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#tabs">Tabs</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#alerts">Alerts</a>
                    </li>
                </ul>
            </div>
        </div>
<main class="col-md-10">
    <h1>What's Bootplate?</h1>

    We like Bootstrap, but its markup can be repetitive and tends to change from version to version. To keep ourselves
    sane, we've created a Grails taglib named Bootplate that simplifies commonly used components where we found the
    Bootstrap markup just too heavy for everyday use.

    <h1>What it Simplifies</h1>

    <a class="anchor" name="forms"></a>
    <h2>Forms</h2>

    <p>Bootstrap's form classes are great, and we love the ability to use the full-on grid system in a form-row, but for
    the majority of form inputs we just want a simple label/input combination that collapses the wrapper div's, label's,
    small's, and add-on input-group divs into a simple tag. That being said, you're free to use any of the great layout,
    accessibility, or componentry of Bootstrap forms: we're just simplifying the most common use cases.</p>

    <p>(Don't even get us started on having to use four lines of boilerplate to wrap a checkbox nicely.)</p>

    <p>Here's a basic form that's horizontal on a wide device (like a laptop), vertical on a tablet or phone, and shows
    validation state:</p>
    <bp:tabs id="form-tabs">
        <bp:tab id="form-example" label="Example Component" active="true" class="example-content">
            <form>
                <bp:field inputId="inputSimpleHorizontal" label="Something Simple and Responsive">
                    <input type="text" class="form-control " id="inputSimpleHorizontal" placeholder="Simple">
                </bp:field>
                <bp:field inputId="inputSimple" label="Something Simple but Always Vertical" responsive="false">
                    <input type="text" class="form-control" id="inputSimple" placeholder="Simple">
                </bp:field>
                <bp:field inputId="inputNotSimple" label="Something Not Simple"
                          prepend="\$" append=".00"
                          help="Some sample help text."
                          validation-feedback="I'm a validation failure message."
                >
                    <input type="text" class="form-control is-invalid" id="inputNotSimple" placeholder="Amount">
                </bp:field>
                <bp:field label="Radios">
                    <bp:radio name="gridRadios" id="gridRadios1" value="option1" checked="true" label="Option one is this and that - be sure to include why it's great" />
                    <bp:radio name="gridRadios" id="gridRadios2" value="option2" checked="false" label="Option two can be something else and selecting it will deselect option one" />
                    <bp:radio name="gridRadios" id="gridRadios3" value="option3" disabled="true" label="Option three is disabled" />
                </bp:field>
                <bp:field label="Checkbox">
                    <bp:check name="someCheck" value="someCheck" label="Check me out" />
                    <bp:check name="someCheck2" value="someCheck2" disabled="true" label="Can't check me out" />
                </bp:field>
            </form>
        </bp:tab>
        <bp:tab id="form-example-plate" label="Bootplate GSP" class="example-content">
<pre>&lt;form&gt;
    &lt;bp:field inputId="inputSimpleHorizontal" label="Something Simple and Responsive" validation-feedback="Derp!"&gt;
        &lt;input type="text" class="form-control is-invalid" id="inputSimpleHorizontal" placeholder="Simple"&gt;
    &lt;/bp:field&gt;
    &lt;bp:field inputId="inputSimple" label="Something Simple but Always Vertical" responsive="false"&gt;
        &lt;input type="text" class="form-control" id="inputSimple" placeholder="Simple"&gt;
    &lt;/bp:field&gt;
    &lt;bp:field inputId="inputNotSimple" label="Something Not Simple"
              prepend="\$" append=".00"
              help="Some sample help text."
              validation-feedback="I'm a validation failure message."
    &gt;
        &lt;input type="text" class="form-control is-invalid" id="inputNotSimple" placeholder="Amount"&gt;
    &lt;/bp:field&gt;
    &lt;bp:field label="Radios"&gt;
        &lt;bp:radio name="gridRadios" id="gridRadios1" value="option1" checked="true" label="Option one is this and that - be sure to include why it's great" /&gt;
        &lt;bp:radio name="gridRadios" id="gridRadios2" value="option2" checked="false" label="Option two can be something else and selecting it will deselect option one" /&gt;
        &lt;bp:radio name="gridRadios" id="gridRadios3" value="option3" disabled="true" label="Option three is disabled" /&gt;
    &lt;/bp:field&gt;
    &lt;bp:field label="Checkbox"&gt;
        &lt;bp:check name="someCheck" value="someCheck" label="Check me out" /&gt;
        &lt;bp:check name="someCheck2" value="someCheck2" disabled="true" label="Can't check me out" /&gt;
    &lt;/bp:field&gt;
&lt;/form&gt;</pre>
        </bp:tab>
        <bp:tab id="form-example-strap" label="Raw Bootstrap GSP" class="example-content">
<pre><code>&lt;form&gt;
    &lt;div class="form-group row"&gt;
        &lt;label for="inputSimpleHorizontal" class="col-md-3 col-form-label"&gt;Something Simple and Responsive&lt;/label&gt;
        &lt;div class="col-md-9"&gt;
            &lt;input type="text" class="form-control" id="inputSimpleHorizontal" placeholder="Simple"&gt;
        &lt;/div&gt;
    &lt;/div&gt;
    &lt;div class="form-group"&gt;
        &lt;label for="inputSimple"&gt;Something Simple but Always Vertical&lt;/label&gt;
        &lt;input type="text" class="form-control" id="inputSimple" placeholder="Simple"&gt;
    &lt;/div&gt;
    &lt;div class="form-group row"&gt;
        &lt;label for="inputNotSimple" class="col-md-3 col-form-label"&gt;Something Not Simple&lt;/label&gt;
        &lt;div class="col-md-9"&gt;
            &lt;div class="input-group flex-wrap"&gt;
                &lt;div class="input-group-addon"&gt;$&lt;/div&gt;
                &lt;input type="text" class="form-control is-invalid" id="inputNotSimple" placeholder="Amount"&gt;
                &lt;div class="input-group-addon"&gt;.00&lt;/div&gt;
                &lt;div class="invalid-feedback w-100"&gt;
                    I'm a validation failure message.
                &lt;/div&gt;
            &lt;/div&gt;
            &lt;small id="inputNotSimpleHelp" class="form-text text-muted"&gt;Some sample help text.&lt;/small&gt;
        &lt;/div&gt;
    &lt;/div&gt;
    &lt;div class="form-group row"&gt;
            &lt;label class="col-md-3 col-form-label"&gt;Radios&lt;/label&gt;
            &lt;div class="col-md-9"&gt;
                &lt;div class="form-check"&gt;
                    &lt;label class="form-check-label"&gt;
                        &lt;input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked&gt;
                        Option one is this and that&mdash;be sure to include why it's great
                    &lt;/label&gt;
                &lt;/div&gt;
                &lt;div class="form-check"&gt;
                    &lt;label class="form-check-label"&gt;
                        &lt;input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2"&gt;
                        Option two can be something else and selecting it will deselect option one
                    &lt;/label&gt;
                &lt;/div&gt;
                &lt;div class="form-check disabled"&gt;
                    &lt;label class="form-check-label"&gt;
                        &lt;input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option3" disabled&gt;
                        Option three is disabled
                    &lt;/label&gt;
                &lt;/div&gt;
            &lt;/div&gt;
    &lt;/div&gt;
    &lt;div class="form-group row"&gt;
        &lt;div class="col-md-3"&gt;Checkbox&lt;/div&gt;
        &lt;div class="col-md-9"&gt;
            &lt;div class="form-check"&gt;
                &lt;label class="form-check-label"&gt;
                    &lt;input name="someCheck" value="someCheck" class="form-check-input" type="checkbox"&gt; Check me out
                &lt;/label&gt;
            &lt;/div&gt;
            &lt;div class="form-check"&gt;
                &lt;label class="form-check-label"&gt;
                    &lt;input name="someCheck2" value="someCheck2" class="form-check-input" type="checkbox" disabled&gt; Can't check me out
                &lt;/label&gt;
            &lt;/div&gt;
        &lt;/div&gt;
    &lt;/div&gt;
    &lt;div class="form-group row"&gt;
        &lt;div class="offset-md-3 col-md-9"&gt;
            &lt;button type="submit" class="btn btn-primary"&gt;Sign in&lt;/button&gt;
        &lt;/div&gt;
    &lt;/div&gt;
&lt;/form&gt;</code></pre>
        </bp:tab>
    </bp:tabs>

    <a class="anchor" name="modals"></a>
    <h2>Modals</h2>
    <p>
        With a header, a body, a title, and a footer, we found ourselves copying-and-pasting too much from the Bootstrap docs
        so we've wrapped things up into a few simpler tags:
    </p>

    <bp:tabs id="modal-tabs">
        <bp:tab id="modal-example" label="Example Component" class="example-content example-content-xs" active="true">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#bootplateModal">
                Launch a demo modal!
            </button>

            <bp:modal id="bootplateModal" title="I'm your title, I'm your fire!">
                <bp:modalBody>
                    Content you desire!
                </bp:modalBody>
                <bp:modalFooter>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </bp:modalFooter>
            </bp:modal>
        </bp:tab>
        <bp:tab id="modal-example-plate" label="Bootplate GSP" class="example-content">
        <pre><code>&lt;bp:modal id="bootplateModal" title="I'm your title, I'm your fire!"&gt;
    &lt;bp:modalBody&gt;
        Content you desire!
    &lt;/bp:modalBody&gt;
    &lt;bp:modalFooter&gt;
        &lt;button type="button" class="btn btn-secondary" data-dismiss="modal"&gt;Close&lt;/button&gt;
        &lt;button type="button" class="btn btn-primary"&gt;Save changes&lt;/button&gt;
    &lt;/bp:modalFooter&gt;
&lt;/bp:modal&gt;</code></pre>
        </bp:tab>
        <bp:tab id="modal-example-strap" label="Raw Bootstrap HTML" class="example-content">
            <pre><code>&lt;div class="modal" id="bootplateModal" tabindex="-1" role="dialog" aria-labelledby="bootplateModalLabel" style="display: none;" aria-hidden="true"&gt;
    &lt;div class="modal-dialog " role="document"&gt;
        &lt;div class="modal-content "&gt;

            &lt;div class="modal-header"&gt;
                &lt;h5 class="modal-title" id="bootplateModalLabel"&gt;I'm your title, I'm your fire!&lt;/h5&gt;
                &lt;button type="button" class="close" data-dismiss="modal" aria-label="Close"&gt;
                    &lt;span aria-hidden="true"&gt;×&lt;/span&gt;
                &lt;/button&gt;
            &lt;/div&gt;
            &lt;div class="modal-body"&gt;
                Content you desire!
            &lt;/div&gt;
            &lt;div class="modal-footer"&gt;
                &lt;button type="button" class="btn btn-secondary" data-dismiss="modal"&gt;Close&lt;/button&gt;
                &lt;button type="button" class="btn btn-primary"&gt;Save changes&lt;/button&gt;
            &lt;/div&gt;
        &lt;/div&gt;
    &lt;/div&gt;
&lt;/div&gt;</code></pre>
        </bp:tab>
    </bp:tabs>

    <a class="anchor" name="tabs"></a>
    <h2>Tabs</h2>
    <p>
        Making a set of tabs is dead easy with Bootplate. Just wrap a set of &lt;tab /&gt; tags in a
        &lt;tabs /&gt; tag. Be sure to pass an id attribute to your tabs tag if you want to control it
        with JavaScript!
    </p>

    <bp:tabs id="example-tabs">
        <bp:tab id="example-tabs-example" label="Example Component" active="true" class="example-content">
            You're looking at it! This set of tabs is built with Bootplate.
        </bp:tab>
        <bp:tab id="example-tabs-plate" label="Bootplate GSP" class="example-content">
            <pre><code>&lt;bp:tabs id="example-tabs"&gt;
    &lt;bp:tab id="home" label="Example Component" active="true" class="example-content"&gt;
        You're looking at it! This set of tabs is built with Bootplate.
    &lt;/bp:tab&gt;
    &lt;bp:tab id="profile" label="Bootplate GSP" class="example-content"&gt;
        &lt;!-- no need to get recursive or anything --&gt;
    &lt;/bp:tab&gt;
    &lt;bp:tab id="content" label="Bootstrap HTML" class="example-content"&gt;
        &lt;!-- no need to get recursive or anything --&gt;
    &lt;/bp:tab&gt;
&lt;/bp:tabs&gt;</code></pre>
        </bp:tab>
        <bp:tab id="example-tabs-strap" label="Raw Bootstrap HTML" class="example-content">
            <pre><code>&lt;ul class="nav nav-tabs" id="example-tabs" role="tablist"&gt;
    &lt;li class="nav-item"&gt;
        &lt;a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true"&gt;Example Component&lt;/a&gt;
    &lt;/li&gt;
    &lt;li class="nav-item"&gt;
        &lt;a class="nav-link " id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false"&gt;Bootplate GSP&lt;/a&gt;
    &lt;/li&gt;
    &lt;li class="nav-item"&gt;
        &lt;a class="nav-link " id="content-tab" data-toggle="tab" href="#content" role="tab" aria-controls="content" aria-selected="false"&gt;Raw Bootstrap HTML&lt;/a&gt;
    &lt;/li&gt;
&lt;/ul&gt;
&lt;div class="tab-content" id="example-tabs-content"&gt;
    &lt;div class="tab-pane show active example-content" id="home" role="tabpanel" aria-labelledby="home-home"&gt;
        You're looking at it! This set of tabs is built with Bootplate.
    &lt;/div&gt;
    &lt;div class="tab-pane  example-content" id="profile" role="tabpanel" aria-labelledby="home-profile"&gt;
        &lt;!-- no need to get recursive or anything --&gt;
    &lt;/div&gt;
    &lt;div class="tab-pane  example-content" id="content" role="tabpanel" aria-labelledby="home-content"&gt;
        &lt;!-- no need to get recursive or anything --&gt;
    &lt;/div&gt;
&lt;/div&gt;</code></pre>

        </bp:tab>
    </bp:tabs>


    <a class="anchor" name="alerts"></a>
    <h2>Alerts</h2>
    <p>
        We've wrapped the Bootstrap alert to make it a little easier to deal with. Just wrap text
        in a &lt;bp:alert /&gt; tag and you're good to go.
    </p>
    <p>
        Using the following attributes you can cover most cases of alerts from simple one-line messages
        to dismissable, fading-out notices with headers:

        <ol>
            <li>id - An id attribute to give the alert's div</li>
            <li>intent - One of the contextual Bootstrap intents for your alert: primary, secondary, success, danger, warning, info, light, or dark</li>
            <li>heading - A heading to show at the top of your alert</li>
            <li>dismissable - Show the close icon and let the alert disappear?</li>
            <li>class - Any additional css class declarations to place on the wrapping div</li>
        </ol>
    <p>

    <h3>Simple Alert</h3>

    <bp:tabs id="simple-alert-tabs">
        <bp:tab id="simple-alert-example" label="Example Component" class="example-content example-content-xs" active="true">
            <bp:alert intent="info">I'm a really simple alert!</bp:alert>
        </bp:tab>
        <bp:tab id="simple-alert-plate" label="Bootplate GSP" class="example-content example-content-xs">
            <pre><code>&lt;bp:alert intent="info"&gt;
    I'm a really simple alert!
&lt;/bp:alert&gt;</code></pre>
        </bp:tab>
        <bp:tab id="simple-alert-strap" label="Raw Bootstrap HTML" class="example-content example-content-xs">
<pre><code>&lt;div class="alert alert-info" role="alert"&gt;
    I'm a really simple alert!
&lt;/div&gt;</code></pre>
        </bp:tab>
    </bp:tabs>


    <h3>Complex Alert</h3>

    <bp:tabs id="complex-alert-tabs">
        <bp:tab id="complex-alert-example" label="Example Component" class="example-content example-content-xs" active="true">
            <bp:alert intent="success" heading="I'm complicated!" dismissable="true" class="fade show">
                I have a heading, you can dismiss/close me, and I fade out!
            </bp:alert>
        </bp:tab>
        <bp:tab id="complex-alert-plate" label="Bootplate GSP" class="example-content example-content-xs">
            <pre><code>&lt;bp:alert intent="success" heading="I'm complicated!" dismissable="true" class="fade show"&gt;
    I have a heading, you can dismiss/close me, and I fade out!
&lt;/bp:alert&gt;</code></pre>
        </bp:tab>
        <bp:tab id="complex-alert-strap" label="Raw Bootstrap HTML" class="example-content example-content-sm">
            <pre><code>&lt;div class="alert alert-success alert-dismissible fade show" role="alert"&gt;
    &lt;h4 class="alert-heading"&gt;I'm complicated!&lt;/h4&gt;
    I have a heading, you can dismiss/close me, and I fade out!
    &lt;button type="button" class="close" data-dismiss="alert" aria-label="Close"&gt;
        &lt;span aria-hidden="true"&gt;&lt;i class="fa fa-close"&gt;&lt;/i&gt;&lt;/span&gt;
    &lt;/button&gt
&lt;/div&gt;</code></pre>
        </bp:tab>
    </bp:tabs>
</main>

    </div>
</div>

</body>
</html>
