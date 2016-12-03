<% include header.html.t %>

<div class="code">
	<div class="line">
		<span class="keyword">namespace</span>
		<span class="name"><%= qualifiedName %></span>
	</div>
</div>

<% if parentQualifiedName %>
	<div class="memberof">Member of <a href="<%= parentQualifiedName %>.html"><%= parentQualifiedName %></a></div>
<% end %>

<% if description %>
	<p class="description"><%= description %></p>
<% end %>

<% for child in children %>
	<div class="entry">
		<p class="signature">
			<a href="<%= child.qualifiedName %>.html">
			<%= child.name %>
			</a>
		</p>
		<% if ${child.description} != "" %>
			<p class="description">
				<%= child.description %>
			</p>
		<% end %>
	</div>
<% end %>

<% include footer.html.t %>
