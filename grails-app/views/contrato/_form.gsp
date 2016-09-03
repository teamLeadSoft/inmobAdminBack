<%@ page import="inmobadminback.Contrato" %>



<div class="fieldcontain ${hasErrors(bean: contratoInstance, field: 'cierreFacturacion', 'error')} required">
	<label for="cierreFacturacion">
		<g:message code="contrato.cierreFacturacion.label" default="Cierre Facturacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="cierreFacturacion" precision="day"  value="${contratoInstance?.cierreFacturacion}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: contratoInstance, field: 'fechaFin', 'error')} required">
	<label for="fechaFin">
		<g:message code="contrato.fechaFin.label" default="Fecha Fin" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaFin" precision="day"  value="${contratoInstance?.fechaFin}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: contratoInstance, field: 'fechaInicio', 'error')} required">
	<label for="fechaInicio">
		<g:message code="contrato.fechaInicio.label" default="Fecha Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaInicio" precision="day"  value="${contratoInstance?.fechaInicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: contratoInstance, field: 'garante', 'error')} ">
	<label for="garante">
		<g:message code="contrato.garante.label" default="Garante" />
		
	</label>
	<g:select name="garante" from="${inmobadminback.Garante.list()}" multiple="multiple" optionKey="id" size="5" value="${contratoInstance?.garante*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratoInstance, field: 'locador', 'error')} required">
	<label for="locador">
		<g:message code="contrato.locador.label" default="Locador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="locador" name="locador.id" from="${inmobadminback.Locador.list()}" optionKey="id" required="" value="${contratoInstance?.locador?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratoInstance, field: 'locatario', 'error')} required">
	<label for="locatario">
		<g:message code="contrato.locatario.label" default="Locatario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="locatario" name="locatario.id" from="${inmobadminback.Locatario.list()}" optionKey="id" required="" value="${contratoInstance?.locatario?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratoInstance, field: 'montoContrato', 'error')} required">
	<label for="montoContrato">
		<g:message code="contrato.montoContrato.label" default="Monto Contrato" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="montoContrato" value="${fieldValue(bean: contratoInstance, field: 'montoContrato')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratoInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="contrato.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" type="number" value="${contratoInstance.numero}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratoInstance, field: 'periodoIncremento', 'error')} required">
	<label for="periodoIncremento">
		<g:message code="contrato.periodoIncremento.label" default="Periodo Incremento" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="periodoIncremento" type="number" value="${contratoInstance.periodoIncremento}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratoInstance, field: 'porcentajeIncremento', 'error')} required">
	<label for="porcentajeIncremento">
		<g:message code="contrato.porcentajeIncremento.label" default="Porcentaje Incremento" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="porcentajeIncremento" value="${fieldValue(bean: contratoInstance, field: 'porcentajeIncremento')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratoInstance, field: 'propiedad', 'error')} required">
	<label for="propiedad">
		<g:message code="contrato.propiedad.label" default="Propiedad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propiedad" name="propiedad.id" from="${inmobadminback.Propiedad.list()}" optionKey="id" required="" value="${contratoInstance?.propiedad?.id}" class="many-to-one"/>

</div>

