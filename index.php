<?php
$nb_path = __DIR__;

require_once('core/nuchoosesetup.php');
require_once('core/nuindexlibs.php');

require_once('core/nustandalonesetuplibs.php'); 
nuImportNewDB();

require_once('core/nusystemupdatelibs.php');

if ( !isset($_SESSION['nubuilder_session_data']['NB_PATH']) || dirname($_SESSION['nubuilder_session_data']['NB_PATH']) != $nb_path ) {

	$_SESSION['nubuilder_session_data']['NB_PATH'] = null;
	nuLoadNewSession();
	header('Location: '.$_SERVER['PHP_SELF']);
	die;

} 

?>
<!DOCTYPE html>
<html id="nuhtml" onclick="nuClick(event)">
<head>
<title><?php echo $nuConfigTitle;?></title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv='Content-type' content='text/html;charset=UTF-8'>
<meta name="theme-color" content="##00adef">

<?php

function nuInclude($pfile, $type){
	
	if ($pfile == '') return;
	
	$a = array();
	if (!is_array ($pfile)) {
		array_push($a, $pfile);
	} else {
		$a = $pfile;
	}
	
	foreach ($a as $value) { 
		$timestamp = date("YmdHis"); //-- Add timestamp so javascript changes are effective immediately		
		if ($type == 'script') print "<script src='$value?ts=$timestamp' type='text/javascript'></script>\n";
		if ($type == 'stylesheet') print "<link rel='stylesheet' href='$value?ts=$timestamp' />\n";
	}
	
}

function nuJSIndexInclude($pfile){
	nuInclude($pfile, 'script');
}

function nuCSSIndexInclude($pfile){
	nuInclude($pfile, 'stylesheet');
}

function nuJSChartsInclude(){

	global $nuConfigIncludeGoogleCharts;
	global $nuConfigIncludeApexCharts;

	if ($nuConfigIncludeGoogleCharts != false) {
		$pfile = "https://www.gstatic.com/charts/loader.js";		
		nuInclude($pfile, 'script');
	}

	if ($nuConfigIncludeApexCharts != false) {
		$pfile = "core/libs/apexcharts/apexcharts.min.js";		
		nuInclude($pfile, 'script');
	}
}

function nuEndsWithStyleTag($style) {

	$tag = '</style>';
	$style = trim($style);
	return strpos($style, $tag) === strlen($style) - strlen($tag);

}

function nuHeader(){

	$sql				= "SELECT * FROM zzzzsys_setup WHERE zzzzsys_setup_id = 1 ";
	$rs 				= nuRunQuery($sql);
	$obj 				= db_fetch_object($rs);	
	$style				= isset($obj->set_style) ? $obj->set_style : '';	
	$style				= '</script>'. (nuEndsWithStyleTag($style) ? $style :  '<style>'.$style.'</style>') . '<script>';
	$HTMLHeader 		= $obj->set_header . $style;
	$j					= "\n\n" . $HTMLHeader . "\n\n";

	return $j;

}

nuJSIndexInclude('core/libs/jquery/jquery.js');
nuJSIndexInclude('core/nuwysiwyg.js');
nuJSIndexInclude('core/nuformclass.js');
nuJSIndexInclude('core/nuform.js');
nuJSIndexInclude('core/nuformdrag.js');
nuJSIndexInclude('core/nucalendar.js');
nuJSIndexInclude('core/nucommon.js');
nuJSIndexInclude('core/nuadmin.js');
nuJSIndexInclude('core/nureportjson.js');
nuJSIndexInclude('core/nuajax.js');
nuJSChartsInclude();
nuJSIndexInclude('core/libs/ctxmenu/ctxmenu.min.js');

if ($nuConfigIncludeQuill == true) {
	nuJSIndexInclude('core/libs/quill/quill.min.js'); 
	nuJSIndexInclude('core/libs/quill/modules/quill-divider.js');
	nuCSSIndexInclude('core/libs/quill/themes/quill.snow.css');
}

nuJSIndexInclude('core/libs/select2/select2.min.js'); 

if ($nuConfigIncludeTinyMCE != false) {
	nuJSIndexInclude('core/libs/tinymce/tinymce.min.js'); 
}

nuCSSIndexInclude('core/css/nubuilder4.css');


$nuConfigIncludeJS = isset($nuConfigIncludeJS) ? $nuConfigIncludeJS : '';
nuJSIndexInclude($nuConfigIncludeJS);
$nuConfigIncludeCSS = isset($nuConfigIncludeCSS) ? $nuConfigIncludeCSS : '';
nuCSSIndexInclude($nuConfigIncludeCSS);

nuCSSIndexInclude('core/libs/select2/select2.min.css');

?>

<link href="core/libs/fontawesome/css/all.min.css" rel="stylesheet">

<script>

function nuValidCaller(o){
	
	if(o === null){return false;}
	return o.hasOwnProperty('nuVersion');
}

function nuHomeWarning(){

	if(window.nuEDITED){
		return nuTranslate('Leave this form without saving ?')+'  '+nuTranslate('Doing this will return you to the login screen.');
	}
	return nuTranslate('Doing this will return you to the login screen.');
}

function nuLoginRequest(u, p){

	$(":submit").nuDisable();

	var w = {
				call_type		: 'login', 
				username		: arguments.length == 0 ? $('#nuusername').val() : u, 
				password		: arguments.length == 0 ? $('#nupassword').val() : p,
				login_form_id	: nuLoginF,
				login_record_id	: nuLoginR
			};

	w	= JSON.stringify(w);

	$.ajax({
		async		: true,	
		dataType	: "json",
		url			: "core/nuapi.php",
		method		 : "POST",
		data		 : {nuSTATE : w
					},
		dataType : "json",
		success	: function(data,textStatus,jqXHR){

			if(nuDisplayError(data)){
				if(data.log_again == 1){location.reload();}
			} else {
				nuForm(data.form_id, data.record_id, data.filter, data.search);
			}
		},
		error		: function(jqXHR,textStatus,errorThrown){

			$(":submit").nuEnable();
			window.test = jqXHR.responseText;

			let err = nuFormatAjaxErrorMessage(jqXHR, errorThrown);
			nuMessage(err);

		},
	}); 
}

window.nuVersion 		= 'nuBuilder4.5';
window.nuDocumentID		= Date.now();

if(parent.window.nuDocumentID == window.nuDocumentID){
	window.onbeforeunload	= nuHomeWarning;
}

window.nuHASH				= [];

<?php
	$nuWelcomeBodyInnerHTML	= (isset($nuWelcomeBodyInnerHTML)?$nuWelcomeBodyInnerHTML:'');
	$welcome				= addslashes($nuWelcomeBodyInnerHTML);
	$nuHeader				= nuHeader();
	$opener					= '';
	$search					= '';
	$iframe					= '';
	$target					= '';
	$l						= scandir('core/graphics');
	$f						= JSON_encode($l);
	$nuBrowseFunction		= 'browse';
	$like					= '';
	$nuUser					= '';
	$nuPassword				= '';
	$nuForm					= '';
	$nuRecord				= '';
	$nuHome					= '';

	function nuSanitize(&$item) {
		$item = htmlspecialchars($item);
	}

	array_walk($_GET, 'nuSanitize');

	if(isset($_GET['u']))				{$nuUser 		= $_GET['u'];}
	if(isset($_GET['p']))				{$nuPassword 	= $_GET['p'];}
	if(isset($_GET['f']))				{$nuForm 		= $_GET['f'];}
	if(isset($_GET['r']))				{$nuRecord 		= $_GET['r'];}
	if(isset($_GET['h']))				{$nuHome 		= $_GET['h'];}

	if(isset($_GET['opener']))			{$opener 		= $_GET['opener'];}
	if(isset($_GET['search']))			{$search 		= $_GET['search'];}
	if(isset($_GET['iframe']))			{$iframe 		= $_GET['iframe'];}
	if(isset($_GET['target']))			{$target 		= $_GET['target'];}
	if(isset($_GET['like']))			{$like	 		= $_GET['like'];}
	if(isset($_GET['browsefunction']))	{$nuBrowseFunction 	= $_GET['browsefunction'];}

	$h1								= "
	window.nuLoginU							= '$nuUser';
	window.nuLoginP							= '$nuPassword';
	window.nuLoginF							= '$nuForm';
	window.nuLoginR							= '$nuRecord';
	window.nuLoginH							= '$nuHome';
	window.nuGraphics						= $f;
	window.nuIsWindow						= '$iframe';
	window.nuImages							= [];
	";

	$isSession	= isset($_SESSION['nubuilder_session_data']['SESSION_ID']);

	if ( $nuUser != '' && $nuPassword != '' ){
		$h2 = nuUseUP($nuBrowseFunction, $target, $welcome, $nuUser, $nuPassword);
	}else{
		
		if($opener == ''){
				$h2 = nuGetJS_login($nuBrowseFunction, $target, $welcome, $nuForm, $nuRecord, $isSession);
			}else{
				$h2 = nuGetJS_action_screen($nuBrowseFunction, $target, $welcome, $opener, $search, $like);
		}
		
	}

	$sessionAlive = '';
	
	if ($nuConfigKeepSessionAlive) {
		$nuConfigKeepSessionAliveInterval = !isset($nuConfigKeepSessionAliveInterval) ? 600 : $nuConfigKeepSessionAliveInterval;
		$sessionAlive = "
		if (nuMainForm()) {
			var refreshTime = 1000 * $nuConfigKeepSessionAliveInterval; // refresh interval in milliseconds
			window.setInterval( function() {
				$.ajax({
					cache: false,
					type: 'GET',
					url: 'core/nukeepsessionalive.php',
					success: function(data) {
					}
				});
			}, refreshTime );
		}
		";
	}
	
	$h3 = $nuJSOptions;
	
	$h4 = "

	function nuResize(){

		var w = window.innerWidth;
		$('#nuActionHolder').css('width', '100%');
		$('#nuBreadcrumbHolder').css('width', '100%');
		$('#nuTabHolder').css('width', '100%');
		$('.nuTabTitleColumn').css('width', '100%');
		$('body').css('width', '100%');

		if (window.nuVerticalTabs) {
			nuSetVerticalTabs();
		}

	}

	// focus select2 search field when clicked
	$(document).on('select2:open', () => {
		document.querySelector('.select2-search__field').focus();
	});

	document.addEventListener('focus', nuOnFocus, true);

	</script>
	<script id='nuheader'>
		$nuHeader
		$sessionAlive
	</script>
	<script>
	";


	$h = $h1.$h2.$h3.$h4;
	print $h;
?>
</script>

<noscript>
<p style="padding-left: 30px;">It appears that JavaScript is disabled or your browser does not support it.</p>
</noscript>

</head>
<?php
	nuLoadBody();
?>
</body>
</html>
