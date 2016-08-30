<%@ page import="inmobadmin.Contrato" %>



<div class="fieldcontain ${hasErrors(bean: contratoInstance, field: 'finalContrato', 'error')} required">
	<label for="finalContrato">
		<g:message code="contrato.finalContrato.label" default="Final Contrato" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="finalContrato" precision="day"  value="${contratoInstance?.finalContrato}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: contratoInstance, field: 'inicioContrato', 'error')} required">
	<label for="inicioContrato">
		<g:message code="contrato.inicioContrato.label" default="Inicio Contrato" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="inicioContrato" precision="day"  value="${contratoInstance?.inicioContrato}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: contratoInstance, field: 'inquilino', 'error')} required">
	<label for="inquilino">
		<g:message code="contrato.inquilino.label" default="Inquilino" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="inquilino" name="inquilino.id" from="${inmobadmin.Inquilino.list()}" optionKey="id" required="" value="${contratoInstance?.inquilino?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contratoInstance, field: 'numeroContrato', 'error')} required">
	<label for="numeroContrato">
		<g:message code="contrato.numeroContrato.label" default="Numero Contrato" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="numeroContrato" required="" value="${fieldValue(bean: contratoInstance, field: 'numeroContrato')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contratoInstance, field: 'propiedad', 'error')} required">
	<label for="propiedad">
		<g:message code="contrato.propiedad.label" default="Propiedad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propiedad" name="propiedad.id" from="${inmobadmin.Propiedad.list()}" optionKey="id" required="" value="${contratoInstance?.propiedad?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contratoInstance, field: 'propietario', 'error')} required">
	<label for="propietario">
		<g:message code="contrato.propietario.label" default="Propietario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propietario" name="propietario.id" from="${inmobadmin.Propietario.list()}" optionKey="id" required="" value="${contratoInstance?.propietario?.id}" class="many-to-one"/>
</div>

