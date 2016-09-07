<!DOCTYPE html>
<html>
  	<head>
		<meta charset="UTF-8">
		<title>Annual Service Review Tracker</title>
		<link rel="stylesheet" href="https://build.origami.ft.com/v2/bundles/css?modules=o-header-services@^1.0.0,o-buttons@^4.0.0,o-forms@^2.0.3,o-grid@^4.2.1">
		<meta name=viewport content="width=device-width, initial-scale=1">

	    <style type="text/css">
	      	body {
				margin:0;
				font-family: Helvetica,arial,sans-serif;
				font-size: 16px;
			}
			#content {
				padding: 20px 0;
			}
			h1 {
				text-align: center;
			}
  		</style>


  	</head>
	<body>
		<header class='o-header-services' data-o-component='o-header-services'>
			<div class='o-header-services__top o-header-services__container'>
				<a href="/" class='o-header-services__ftlogo'></a>
				<div class='o-header-services__title'>
					<h1 class='o-header-services__product-name'>ASR Tracker</h1>
					<span class='o-header-subrand__product-tagline'>A Yearly check on the Health of our Systems</span>
				</div>
			</div>
		</header>
		<div id='content' class="o-grid-container">
			<div class="o-grid-row" data-o-grid-colspan="9">
				<h1>
					Success
				</h1>
				<p>Review of <strong>{{systemCode}}</strong> recorded by <strong>{{username}}</strong> at <strong>{{date}}</strong>.</p>
			</div>
		</div>
		<script src="https://build.origami.ft.com/v2/bundles/js?modules=o-techdocs@^5.0.1,o-table@^3.0.1,o-buttons@^3.0.3,o-forms@^2.0.0"></script>
	</body>
</html>
