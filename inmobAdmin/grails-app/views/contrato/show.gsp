
<%@ page import="inmobadmin.Contrato" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contrato.label', default: 'Contrato')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-contrato" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-contrato" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list contrato">
			
				<g:if test="${contratoInstance?.finalContrato}">
				<li class="fieldcontain">
					<span id="finalContrato-label" class="property-label"><g:message code="contrato.finalContrato.label" default="Final Contrato" /></span>
					
						<span class="property-value" aria-labelledby="finalContrato-label"><g:formatDate date="${contratoInstance?.finalContrato}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratoInstance?.inicioContrato}">
				<li class="fieldcontain">
					<span id="inicioContrato-label" class="property-label"><g:message code="contrato.inicioContrato.label" default="Inicio Contrato" /></span>
					
						<span class="property-value" aria-labelledby="inicioContrato-label"><g:formatDate date="${contratoInstance?.inicioContrato}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratoInstance?.inquilino}">
				<li class="fieldcontain">
					<span id="inquilino-label" class="property-label"><g:message code="contrato.inquilino.label" default="Inquilino" /></span>
					
						<span class="property-value" aria-labelledby="inquilino-label"><g:link controller="inquilino" action="show" id="${contratoInstance?.inquilino?.id}">${contratoInstance?.inquilino?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratoInstance?.numeroContrato}">
				<li class="fieldcontain">
					<span id="numeroContrato-label" class="property-label"><g:message code="contrato.numeroContrato.label" default="Numero Contrato" /></span>
					
						<span class="property-value" aria-labelledby="numeroContrato-label"><g:fieldValue bean="${contratoInstance}" field="numeroContrato"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratoInstance?.propiedad}">
				<li class="fieldcontain">
					<span id="propiedad-label" class="property-label"><g:message code="contrato.propiedad.label" default="Propiedad" /></span>
					
						<span class="property-value" aria-labelledby="propiedad-label"><g:link controller="propiedad" action="show" id="${contratoInstance?.propiedad?.id}">${contratoInstance?.propiedad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratoInstance?.propietario}">
				<li class="fieldcontain">
					<span id="propietario-label" class="property-label"><g:message code="contrato.propietario.label" default="Propietario" /></span>
					
						<span class="property-value" aria-labelledby="propietario-label"><g:link controller="propietario" action="show" id="${contratoInstance?.propietario?.id}">${contratoInstance?.propietario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${contratoInstance?.id}" />
					<g:link class="edit" action="edit" id="${contratoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
