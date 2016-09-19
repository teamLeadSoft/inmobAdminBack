
<%@ page import="inmobadminback.Recibo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recibo.label', default: 'Recibo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-recibo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-recibo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list recibo">
			
				<g:if test="${reciboInstance?.contrato}">
				<li class="fieldcontain">
					<span id="contrato-label" class="property-label"><g:message code="recibo.contrato.label" default="Contrato" /></span>
					
						<span class="property-value" aria-labelledby="contrato-label"><g:link controller="contrato" action="show" id="${reciboInstance?.contrato?.id}">${reciboInstance?.contrato?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.esAbonado}">
				<li class="fieldcontain">
					<span id="esAbonado-label" class="property-label"><g:message code="recibo.esAbonado.label" default="Es Abonado" /></span>
					
						<span class="property-value" aria-labelledby="esAbonado-label"><g:formatBoolean boolean="${reciboInstance?.esAbonado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.esActivo}">
				<li class="fieldcontain">
					<span id="esActivo-label" class="property-label"><g:message code="recibo.esActivo.label" default="Es Activo" /></span>
					
						<span class="property-value" aria-labelledby="esActivo-label"><g:formatBoolean boolean="${reciboInstance?.esActivo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.fechaCreacion}">
				<li class="fieldcontain">
					<span id="fechaCreacion-label" class="property-label"><g:message code="recibo.fechaCreacion.label" default="Fecha Creacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaCreacion-label"><g:formatDate date="${reciboInstance?.fechaCreacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.reciboJson}">
				<li class="fieldcontain">
					<span id="reciboJson-label" class="property-label"><g:message code="recibo.reciboJson.label" default="Recibo Json" /></span>
					
						<span class="property-value" aria-labelledby="reciboJson-label"><g:fieldValue bean="${reciboInstance}" field="reciboJson"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:reciboInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${reciboInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
