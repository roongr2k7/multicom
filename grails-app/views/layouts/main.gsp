<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <div id="grailsLogo"><a href="http://grails.org"><img src="${resource(dir:'images',file:'grails_logo.png')}" alt="Grails" border="0" /></a></div>
        <g:if test="${session.ten == '1'}">
        <div style="width: 200px;"><span style="display:inline-block;width:80px;background-color:#afc;"><g:link controller="suitFolder" action="changeTenant" id="1">KTB Bank</g:link></span><span style="display:inline-block;width:80px;"><g:link controller="suitFolder" action="changeTenant" id="2">SAM</g:link></span></div>
        </g:if>
        <g:else>
        <div style="width: 200px;"><span style="display:inline-block;width:80px;"><g:link controller="suitFolder" action="changeTenant" id="1">KTB Bank</g:link></span><span style="display:inline-block;width:80px;background-color:#afc;"><g:link controller="suitFolder" action="changeTenant" id="2">SAM</g:link></span></div>
        </g:else>
        
        <g:layoutBody />
    </body>
</html>