<% include header.html.t %>

<div class="code">
	<div class="line">
		<span class="keyword"><%= type %></span>
		<% if genericTypes %>
			&lt;
			<% for type in genericTypes %>
				<% if ${__for_first} == "false" %>,<% end %>
				<%= type %>
			<% end %>
			&gt;
		<% end %>
		<span class="keyword">name</span>
		<span class="name"><%= qualifiedName %></span>
		<% for modifier in modifiers %>
			<span class="modifier"><%= modifier %></span>
		<% end %>
	</div>
	<% for baseType in baseTypes %>
		<div class="line indent">
			<% if ${baseType.reference} != "" %>
				<span class="keyword">is</span> <a href="<%= baseType.reference %>.html"><%= baseType.display %></a>
			<% end %>
			<% if ${baseType.reference} == "" %>
				<span class="keyword">is</span> <%= baseType.display %>
			<% end %>
		</div>
	<% end %>
</div>

<% if parentQualifiedName %>
	<div class="memberof">Member of <a href="<%= parentQualifiedName %>.html"><%= parentQualifiedName %></a></div>
<% end %>

<% if description %>
	<p class="description"><%= description %></p>
<% end %>

<% if innerTypes %>
	<h1>Inner types</h1>
	<% for child in innerTypes %>
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
<% end %>

<% if constants %>
	<h1>Constants</h1>
	<% for child in constants %>
		<div class="entry">
			<p class="signature">
				<span class="keyword">const</span>
				<span class="name"><%= child.name %></span>
				<span class="keyword">as</span>
				<span class="datatype"><%= child.dataType.display %></span>
			</p>
			<% if ${child.description} != "" %>
				<p class="description">
					<%= child.description %>
				</p>
			<% end %>
		</div>
	<% end %>
<% end %>

<% if staticVariables %>
	<h1>Static variables</h1>
	<% for child in staticVariables %>
		<div class="entry">
			<p class="signature">
				<span class="keyword">var</span>
				<span class="name"><%= child.name %></span>
				<span class="keyword">as</span>
				<span class="datatype"><%= child.dataType.display %></span>
			</p>
			<% if ${child.description} != "" %>
				<p class="description">
					<%= child.description %>
				</p>
			<% end %>
		</div>
	<% end %>
<% end %>

<% if staticMethods %>
	<h1>Static methods</h1>
	<% for method in staticMethods %>
		<% include method.html.t %>
	<% end %>
<% end %>

<% if instanceVariables %>
	<h1>Instance variables</h1>
	<% for child in instanceVariables %>
		<div class="entry">
			<p class="signature">
				<span class="keyword">var</span>
				<span class="name"><%= child.name %></span>
				<span class="keyword">as</span>
				<span class="datatype"><%= child.dataType.display %></span>
			</p>
			<% if ${child.description} != "" %>
				<p class="description">
					<%= child.description %>
				</p>
			<% end %>
		</div>
	<% end %>
<% end %>

<% if constructors %>
	<h1>Constructors</h1>
	<% for ctor in constructors %>
		<p><%= ctor.name %></p>
	<% end %>
<% end %>

<% if instanceMethods %>
	<h1>Instance methods</h1>
	<% for method in instanceMethods %>
		<% include method.html.t %>
	<% end %>
<% end %>

<% include footer.html.t %>
