<div class="entry">
	<p class="signature">
		<span class="keyword">func</span>
		<span class="name"><%= method.name %></span>
		<% if method.parameters %>
		(
			<% for param in method.parameters %>
				<% if ${__for_first} == "false" %>,<% end %>
				<span class="name"><%= param.name %></span>
				<span class="keyword">as</span>
				<% if ${param.dataType.reference} != "" %>
					<a href="<%= param.dataType.reference %>.html"><%= param.dataType.display %></a>
				<% end %>
				<% if ${param.dataType.reference} == "" %>
					<span class="datatype"><%= param.dataType.display %></span>
				<% end %>
			<% end %>
		)
		<% end %>
		<% for mod in method.modifiers %>
			<span class="modifier"><%= mod %></span>
		<% end %>
		<% if method.returnType %>
			<span class="keyword">as</span>
			<% if ${method.returnType.reference} != "" %>
				<a href="<%= method.returnType.reference %>.html"><%= method.returnType.display %></a>
			<% end %>
			<% if ${method.returnType.reference} == "" %>
				<span class="datatype"><%= method.returnType.display %></span>
			<% end %>
		<% end %>
	</p>
	<% if ${method.description} != "" %>
		<p class="description">
			<%= method.description %>
		</p>
	<% end %>
</div>
