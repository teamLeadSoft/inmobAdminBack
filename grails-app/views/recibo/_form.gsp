<%@ page import="inmobadminback.Recibo" %>



<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'contrato', 'error')} required">
	<label for="contrato">
		<g:message code="recibo.contrato.label" default="Contrato" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="contrato" name="contrato.id" from="${inmobadminback.Contrato.list()}" optionKey="id" required="" value="${reciboInstance?.contrato?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'esAbonado', 'error')} ">
	<label for="esAbonado">
		<g:message code="recibo.esAbonado.label" default="Es Abonado" />
		
	</label>
	<g:checkBox name="esAbonado" value="${reciboInstance?.esAbonado}" />

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'esActivo', 'error')} ">
	<label for="esActivo">
		<g:message code="recibo.esActivo.label" default="Es Activo" />
		
	</label>
	<g:checkBox name="esActivo" value="${reciboInstance?.esActivo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'fechaCreacion', 'error')} required">
	<label for="fechaCreacion">
		<g:message code="recibo.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${reciboInstance?.fechaCreacion}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'reciboJson', 'error')} required">
	<label for="reciboJson">
		<g:message code="recibo.reciboJson.label" default="Recibo Json" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="reciboJson" required="" value="${reciboInstance?.reciboJson}"/>

</div>

