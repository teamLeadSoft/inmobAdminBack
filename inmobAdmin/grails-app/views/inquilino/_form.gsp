<%@ page import="inmobadmin.Inquilino" %>



<div class="fieldcontain ${hasErrors(bean: inquilinoInstance, field: 'apellido', 'error')} ">
	<label for="apellido">
		<g:message code="inquilino.apellido.label" default="Apellido" />
		
	</label>
	<g:textField name="apellido" value="${inquilinoInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inquilinoInstance, field: 'dni', 'error')} ">
	<label for="dni">
		<g:message code="inquilino.dni.label" default="Dni" />
		
	</label>
	<g:textField name="dni" value="${inquilinoInstance?.dni}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inquilinoInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="inquilino.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${inquilinoInstance?.nombre}"/>
</div>

