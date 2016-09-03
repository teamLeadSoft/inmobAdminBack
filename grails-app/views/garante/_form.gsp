<%@ page import="inmobadminback.Garante" %>



<div class="fieldcontain ${hasErrors(bean: garanteInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="garante.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${garanteInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: garanteInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="garante.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${garanteInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: garanteInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="garante.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${garanteInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: garanteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="garante.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${garanteInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: garanteInstance, field: 'dni', 'error')} required">
	<label for="dni">
		<g:message code="garante.dni.label" default="Dni" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dni" required="" value="${garanteInstance?.dni}"/>

</div>

