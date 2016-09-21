
<%@ page import="inmobadminback.Contrato" %>
<!DOCTYPE html>
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
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-contrato" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list contrato">
			
				<g:if test="${contratoInstance?.concepto}">
				<li class="fieldcontain">
					<span id="concepto-label" class="property-label"><g:message code="contrato.concepto.label" default="Concepto" /></span>
					
						<g:each in="${contratoInstance.concepto}" var="c">
						<span class="property-value" aria-labelledby="concepto-label"><g:link controller="concepto" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${contratoInstance?.fechaFin}">
				<li class="fieldcontain">
					<span id="fechaFin-label" class="property-label"><g:message code="contrato.fechaFin.label" default="Fecha Fin" /></span>
					
						<span class="property-value" aria-labelledby="fechaFin-label"><g:formatDate date="${contratoInstance?.fechaFin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratoInstance?.fechaInicio}">
				<li class="fieldcontain">
					<span id="fechaInicio-label" class="property-label"><g:message code="contrato.fechaInicio.label" default="Fecha Inicio" /></span>
					
						<span class="property-value" aria-labelledby="fechaInicio-label"><g:formatDate date="${contratoInstance?.fechaInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratoInstance?.garante}">
				<li class="fieldcontain">
					<span id="garante-label" class="property-label"><g:message code="contrato.garante.label" default="Garante" /></span>
					
						<g:each in="${contratoInstance.garante}" var="g">
						<span class="property-value" aria-labelledby="garante-label"><g:link controller="garante" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${contratoInstance?.locador}">
				<li class="fieldcontain">
					<span id="locador-label" class="property-label"><g:message code="contrato.locador.label" default="Locador" /></span>
					
						<span class="property-value" aria-labelledby="locador-label"><g:link controller="locador" action="show" id="${contratoInstance?.locador?.id}">${contratoInstance?.locador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratoInstance?.locatario}">
				<li class="fieldcontain">
					<span id="locatario-label" class="property-label"><g:message code="contrato.locatario.label" default="Locatario" /></span>
					
						<span class="property-value" aria-labelledby="locatario-label"><g:link controller="locatario" action="show" id="${contratoInstance?.locatario?.id}">${contratoInstance?.locatario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratoInstance?.montoMensualContrato}">
				<li class="fieldcontain">
					<span id="montoMensualContrato-label" class="property-label"><g:message code="contrato.montoMensualContrato.label" default="Monto Mensual Contrato" /></span>
					
						<span class="property-value" aria-labelledby="montoMensualContrato-label"><g:fieldValue bean="${contratoInstance}" field="montoMensualContrato"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratoInstance?.montoTotalContrato}">
				<li class="fieldcontain">
					<span id="montoTotalContrato-label" class="property-label"><g:message code="contrato.montoTotalContrato.label" default="Monto Total Contrato" /></span>
					
						<span class="property-value" aria-labelledby="montoTotalContrato-label"><g:fieldValue bean="${contratoInstance}" field="montoTotalContrato"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratoInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="contrato.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${contratoInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratoInstance?.periodoIncremento}">
				<li class="fieldcontain">
					<span id="periodoIncremento-label" class="property-label"><g:message code="contrato.periodoIncremento.label" default="Periodo Incremento" /></span>
					
						<span class="property-value" aria-labelledby="periodoIncremento-label"><g:fieldValue bean="${contratoInstance}" field="periodoIncremento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratoInstance?.porcentajeIncremento}">
				<li class="fieldcontain">
					<span id="porcentajeIncremento-label" class="property-label"><g:message code="contrato.porcentajeIncremento.label" default="Porcentaje Incremento" /></span>
					
						<span class="property-value" aria-labelledby="porcentajeIncremento-label"><g:fieldValue bean="${contratoInstance}" field="porcentajeIncremento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratoInstance?.propiedad}">
				<li class="fieldcontain">
					<span id="propiedad-label" class="property-label"><g:message code="contrato.propiedad.label" default="Propiedad" /></span>
					
						<span class="property-value" aria-labelledby="propiedad-label"><g:link controller="propiedad" action="show" id="${contratoInstance?.propiedad?.id}">${contratoInstance?.propiedad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:contratoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${contratoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
