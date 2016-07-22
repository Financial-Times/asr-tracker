<!DOCTYPE html>
<html>
  	<head>
		<meta charset="UTF-8">
		<title>Annual Service Review Tracker</title>
		<meta name=viewport content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://build.origami.ft.com/v2/bundles/css?modules=o-header@^4.0.0,o-table@^3.0.1,o-buttons@^3.0.3,o-forms@^2.0.3" />

		<style type="text/css">
		  	body {
				margin:0;
			}
			#content {
				padding: 15px;
			}
			.o-forms-errortext {
				display: none;
			}
			.o-forms--error > .o-forms-errortext {
				display: block;
			}
  		</style>

  		<script type="text/javascript">
  			<!--
  				// Hide the "saved" message after a few seconds
  				document.addEventListener("DOMContentLoaded", function() {
					window.setTimeout(function () {
						var savedmessage = document.querySelector('#saved');
						if (savedmessage) {
							savedmessage.setAttribute("class", savedmessage.getAttribute("class")+" hide");
						}
					}, 5000);

					/**
					 * Check the validity of a field on page load and each time the field changes 
					 **/
					function addChecks(input, group) {
						function checkValidity() {
							if(!input.value) {
								group.setAttribute("class","o-forms-group");
							} else if(input.checkValidity()){
								group.setAttribute("class","o-forms-group o-forms--valid");
							} else {
								group.setAttribute("class","o-forms-group o-forms--error");
							}
						}
						input.addEventListener('change', checkValidity);
						checkValidity();
					}
					var systemcodeinput = document.querySelector('#systemCode');
					addChecks(systemcodeinput, systemcodeinput.parentNode);

  				});
  			-->
  		</script>
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
		<div id='content'>
			<form method='post' action='/'>
				<div class="o-forms-wrapper">
					<div class="o-forms-group">
						<label class="o-forms-label" for="systemCode">System Code</label>
						<small class="o-forms-additional-info">The system code of the system which has been reviewed</small>
						<input type="text" name="systemCode" class="o-forms-text" id="systemCode" pattern="^[a-z0-9\-]{3,32}$" required></input>
					<div class="o-forms-errortext">System Codes must consist of between 3 and 32 lowercase alphanumeric characters or hyphens.</div>
					</div>
				<div class="o-forms-group">
					<input type="checkbox" class="o-forms-checkbox o-forms-checkbox--highlight" id="doneReview" data-bind="doneReview" required></input>
					<label for="doneReview" class="o-forms-label" id="terms-text">
						<p>I confirm that the Annual Service Review has been completed for this system</p>
					</label>
					<div class="o-forms-errortext">You must have completed the Annual Service Review to submit this form</div>
				</div>
				<p>Submitter: <span>{{username}}</span></p>
					<input type='submit' class="o-buttons o-buttons--standout" value="Review Complete">
				</div>
			</form>

		</div>
		<script src="https://build.origami.ft.com/v2/bundles/js?modules=o-header@^4.0.0,o-table@^3.0.1,o-buttons@^3.0.3"></script>
	</body>
</html>
