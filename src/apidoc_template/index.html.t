<% include header.html.t %>

<% if introHeader %>
	<div class="code">
		<div class="line">
			<span class="name"><%= introHeader %></span>
		</div>
	</div>
<% end %>

<% if introText %>
	<div class="text">
		<% printRichText ${introText} %>
	</div>
<% end %>

<h1>Namespaces</h1>
<% for ns in namespaces %>
	<div class="entry">
		<p class="signature">
			<a href="<%= ns.qualifiedName %>.html">
			<%= ns.qualifiedName %>
			</a>
		</p>
		<% if ${ns.description} != "" %>
			<p class="description">
				<%= ns.description %>
			</p>
		<% end %>
	</div>
<% end %>

<% include footer.html.t %>
