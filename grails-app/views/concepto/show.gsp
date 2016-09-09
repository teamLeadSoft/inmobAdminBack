
<%@ page import="inmobadminback.Concepto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'concepto.label', default: 'Concepto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-concepto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-concepto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list concepto">
			
				<g:if test="${conceptoInstance?.cuotas}">
				<li class="fieldcontain">
					<span id="cuotas-label" class="property-label"><g:message code="concepto.cuotas.label" default="Cuotas" /></span>
					
						<span class="property-value" aria-labelledby="cuotas-label"><g:fieldValue bean="${conceptoInstance}" field="cuotas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conceptoInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="concepto.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${conceptoInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conceptoInstance?.inicio}">
				<li class="fieldcontain">
					<span id="inicio-label" class="property-label"><g:message code="concepto.inicio.label" default="Inicio" /></span>
					
						<span class="property-value" aria-labelledby="inicio-label"><g:formatDate date="${conceptoInstance?.inicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${conceptoInstance?.isCredito}">
				<li class="fieldcontain">
					<span id="isCredito-label" class="property-label"><g:message code="concepto.isCredito.label" default="Is Credito" /></span>
					
						<span class="property-value" aria-labelledby="isCredito-label"><g:formatBoolean boolean="${conceptoInstance?.isCredito}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${conceptoInstance?.monto}">
				<li class="fieldcontain">
					<span id="monto-label" class="property-label"><g:message code="concepto.monto.label" default="Monto" /></span>
					
						<span class="property-value" aria-labelledby="monto-label"><g:fieldValue bean="${conceptoInstance}" field="monto"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:conceptoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${conceptoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
