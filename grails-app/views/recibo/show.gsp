
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
			
				<g:if test="${reciboInstance?.año}">
				<li class="fieldcontain">
					<span id="año-label" class="property-label"><g:message code="recibo.año.label" default="Año" /></span>
					
						<span class="property-value" aria-labelledby="año-label"><g:fieldValue bean="${reciboInstance}" field="año"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.ciudad}">
				<li class="fieldcontain">
					<span id="ciudad-label" class="property-label"><g:message code="recibo.ciudad.label" default="Ciudad" /></span>
					
						<span class="property-value" aria-labelledby="ciudad-label"><g:fieldValue bean="${reciboInstance}" field="ciudad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.comporbanteMesGas}">
				<li class="fieldcontain">
					<span id="comporbanteMesGas-label" class="property-label"><g:message code="recibo.comporbanteMesGas.label" default="Comporbante Mes Gas" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.comporbanteMesMunicipal}">
				<li class="fieldcontain">
					<span id="comporbanteMesMunicipal-label" class="property-label"><g:message code="recibo.comporbanteMesMunicipal.label" default="Comporbante Mes Municipal" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.comprobanteMesAgua}">
				<li class="fieldcontain">
					<span id="comprobanteMesAgua-label" class="property-label"><g:message code="recibo.comprobanteMesAgua.label" default="Comprobante Mes Agua" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.comprobanteMesExpensas}">
				<li class="fieldcontain">
					<span id="comprobanteMesExpensas-label" class="property-label"><g:message code="recibo.comprobanteMesExpensas.label" default="Comprobante Mes Expensas" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.comprobanteMesLuz}">
				<li class="fieldcontain">
					<span id="comprobanteMesLuz-label" class="property-label"><g:message code="recibo.comprobanteMesLuz.label" default="Comprobante Mes Luz" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.comprobanteMesRentas}">
				<li class="fieldcontain">
					<span id="comprobanteMesRentas-label" class="property-label"><g:message code="recibo.comprobanteMesRentas.label" default="Comprobante Mes Rentas" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="recibo.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${reciboInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.dniLocador}">
				<li class="fieldcontain">
					<span id="dniLocador-label" class="property-label"><g:message code="recibo.dniLocador.label" default="Dni Locador" /></span>
					
						<span class="property-value" aria-labelledby="dniLocador-label"><g:fieldValue bean="${reciboInstance}" field="dniLocador"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.dniLocatario}">
				<li class="fieldcontain">
					<span id="dniLocatario-label" class="property-label"><g:message code="recibo.dniLocatario.label" default="Dni Locatario" /></span>
					
						<span class="property-value" aria-labelledby="dniLocatario-label"><g:fieldValue bean="${reciboInstance}" field="dniLocatario"/></span>
					
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
			
				<g:if test="${reciboInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="recibo.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${reciboInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.mes}">
				<li class="fieldcontain">
					<span id="mes-label" class="property-label"><g:message code="recibo.mes.label" default="Mes" /></span>
					
						<span class="property-value" aria-labelledby="mes-label"><g:fieldValue bean="${reciboInstance}" field="mes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.nombreLocador}">
				<li class="fieldcontain">
					<span id="nombreLocador-label" class="property-label"><g:message code="recibo.nombreLocador.label" default="Nombre Locador" /></span>
					
						<span class="property-value" aria-labelledby="nombreLocador-label"><g:fieldValue bean="${reciboInstance}" field="nombreLocador"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.nombreLocatario}">
				<li class="fieldcontain">
					<span id="nombreLocatario-label" class="property-label"><g:message code="recibo.nombreLocatario.label" default="Nombre Locatario" /></span>
					
						<span class="property-value" aria-labelledby="nombreLocatario-label"><g:fieldValue bean="${reciboInstance}" field="nombreLocatario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.nroRecibo}">
				<li class="fieldcontain">
					<span id="nroRecibo-label" class="property-label"><g:message code="recibo.nroRecibo.label" default="Nro Recibo" /></span>
					
						<span class="property-value" aria-labelledby="nroRecibo-label"><g:fieldValue bean="${reciboInstance}" field="nroRecibo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.sumaLetras}">
				<li class="fieldcontain">
					<span id="sumaLetras-label" class="property-label"><g:message code="recibo.sumaLetras.label" default="Suma Letras" /></span>
					
						<span class="property-value" aria-labelledby="sumaLetras-label"><g:fieldValue bean="${reciboInstance}" field="sumaLetras"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reciboInstance?.sumaNumero}">
				<li class="fieldcontain">
					<span id="sumaNumero-label" class="property-label"><g:message code="recibo.sumaNumero.label" default="Suma Numero" /></span>
					
						<span class="property-value" aria-labelledby="sumaNumero-label"><g:fieldValue bean="${reciboInstance}" field="sumaNumero"/></span>
					
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
