<%@ page import="inmobadmin.Propietario" %>



<div class="fieldcontain ${hasErrors(bean: propietarioInstance, field: 'apellido', 'error')} ">
	<label for="apellido">
		<g:message code="propietario.apellido.label" default="Apellido" />
		
	</label>
	<g:textField name="apellido" value="${propietarioInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propietarioInstance, field: 'dni', 'error')} ">
	<label for="dni">
		<g:message code="propietario.dni.label" default="Dni" />
		
	</label>
	<g:textField name="dni" value="${propietarioInstance?.dni}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propietarioInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="propietario.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${propietarioInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propietarioInstance, field: 'propiedad', 'error')} ">
	<label for="propiedad">
		<g:message code="propietario.propiedad.label" default="Propiedad" />
		
	</label>
	<g:select name="propiedad" from="${inmobadmin.Propiedad.list()}" multiple="multiple" optionKey="id" size="5" value="${propietarioInstance?.propiedad*.id}" class="many-to-many"/>
</div>

