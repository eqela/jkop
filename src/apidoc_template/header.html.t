<!DOCTYPE html>
<html>
<head>
	<title><%= qualifiedName %></title>
	<style>
		* {
			margin: 0px;
			padding: 0px;
		}
		.content {
			padding-top: 16px;
			padding-bottom: 16px;
			padding-left: 16px;
			padding-right: 16px;
			max-width: 1280px;
			margin: auto;
		}
		.content h1 {
			font-family: Arial, Helvetica, sans-serif;
			font-weight: bold;
			font-size: 22px;
		}
		.content h2 {
			font-family: Arial, Helvetica, sans-serif;
			font-weight: bold;
			font-size: 18px;
		}
		.content .description {
			font-family: Georgia, serif;
			font-size: 1.4em;
			color: #808080;
			line-height: 1.6em;
			text-align: center;
			padding: 16px;
		}
		.content > * + * {
			margin-top: 16px;
		}
		.topbar img {
			height: 48px;
			vertical-align: middle;
			margin-right: 8px;
		}
		.topbar a {
			border-bottom: 0px;
			font-weight: normal;
			font-family: Arial, Helvetica, sans-serif;
			font-size: 15px;
			color: #808080;
		}
		.topbar a:hover {
			text-decoration: underline;
			border-bottom: 0px;
		}
		.code {
			padding: 16px;
			font-family: "Courier New", Courier, monospace;
			font-size: 15px;
			line-height: 24px;
			background-color: black;
			color: white;
		}
		.code span.name {
			font-weight: bold;
		}
		.code span.datatype {
			color: #FFFF77;
			font-weight: bold;
		}
		.code span.modifier {
			color: #77FFFF;
			font-style: italic;
		}
		.code span.keyword {
			color: #FF77FF;
		}
		.code a {
			color: #FFFF77;
		}
		.text {
			font-family: Georgia, serif;
			font-size: 1.1em;
			line-height: 1.8em;
			text-align: justify;
		}
		.text > * {
			margin: 0px;
			padding: 0px;
		}
		.text > * + * {
			margin-top: 16px;
		}
		.indent {
			margin-left: 32px;
		}
		.entry {
		}
		.entry .signature {
			font-family: "Courier New", Courier, monospace;
			font-size: 15px;
			padding: 16px;
			background-color: #EEEEEE;
		}
		.entry .description {
			font-family: Georgia, serif;
			background-color: #EEEEFF;
			padding: 16px;
			font-size: 1.2em;
			line-height: 1.3em;
			text-align: justify;
		}
		.entry * + .description {
			border-top: 1px solid #BBBBBB;
		}
		.entry span.name {
			font-weight: bold;
		}
		.entry span.datatype {
			color: #808000;
			font-weight: bold;
		}
		.entry span.modifier {
			color: #008080;
			font-style: italic;
		}
		.entry span.keyword {
			color: #800080;
		}
		a {
			color: #808000;
			font-weight: bold;
			text-decoration: none;
			border-bottom: 2px dotted #808000;
		}
		a:hover {
			border-bottom: 2px solid #808000;
		}
		.memberof {
			margin-top: 4px;
			font-family: verdana, arial;
			font-size: 0.85em;
			color: #808080;
		}
		.footer {
			border-top: 1px solid #CCCCCC;
			padding-top: 4px;
			font-size: 14px;
			color: #808080;
		}
		.footer a {
			display: block;
			float: right;
			border-bottom: 0px;
		}
	</style>
</head>
<body>
<div class="content">
<div class="topbar">
<a href="index.html"><img src="logo.png" /> API Reference (version <%= version %>)</a>
</div>