<!DOCTYPE html>
<html>
  	<head>
		<meta charset="UTF-8">
		<title>Annual Service Review Tracker</title>
		<link rel="stylesheet" href="https://build.origami.ft.com/v2/bundles/css?modules=o-header@^4.0.0,o-table@^3.0.1,o-buttons@^3.0.3,o-forms@^2.0.3" />
		<meta name=viewport content="width=device-width, initial-scale=1">

	    <style type="text/css">
	      	body {
				margin:0;
			}
			#content {
				padding: 15px;
			}
			h1 {
				text-align: center;
			}
  		</style>


  	</head>
	<body>
		<header data-o-component="o-header" class="o-header o-header--tall">
			<div class="o-header__container">
				<div class="o-header__primary">
					<div class="o-header__primary__left">
						<a href="/" class="o-header__logo o-header__logo--ft">
							<abbr title="Financial Times">FT</abbr>
							<h1 class="o-header__title">ASR Tracker</h1>
						</a>
					</div>
					<div class="o-header__primary__center"><h3 class="o-header__tagline">A Yearly check on the Health of our Systems</h3>
					</div>
				</div>
			</div>
		</header>
		<div id="content">
			<h1>
				Success
			</h1>
			<p>Review of <strong>{{systemCode}}</strong> recorded by <strong>{{username}}</strong> at <strong>{{date}}</strong>.</p>
		</div>
		<script src="https://build.origami.ft.com/v2/bundles/js?modules=o-techdocs@^5.0.1,o-table@^3.0.1,o-buttons@^3.0.3,o-forms@^2.0.0"></script>
	</body>
</html>
