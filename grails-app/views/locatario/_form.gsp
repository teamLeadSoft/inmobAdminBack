<%@ page import="inmobadminback.Locatario" %>



<div class="fieldcontain ${hasErrors(bean: locatarioInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="locatario.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${locatarioInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locatarioInstance, field: 'dni', 'error')} required">
	<label for="dni">
		<g:message code="locatario.dni.label" default="Dni" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dni" required="" value="${locatarioInstance?.dni}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locatarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="locatario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${locatarioInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locatarioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="locatario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${locatarioInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locatarioInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="locatario.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${locatarioInstance?.telefono}"/>

</div>

