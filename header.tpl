{*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2015 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<!DOCTYPE HTML>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<!--[if gt IE 8]> <html class="no-js ie9"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<html{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}>
	<head>
		<meta charset="utf-8">
		<title>{$meta_title|escape:'html':'UTF-8'}</title>
		{if isset($meta_description) AND $meta_description}
			<meta name="description" content="{$meta_description|escape:'html':'UTF-8'}">
		{/if}
		{if isset($meta_keywords) AND $meta_keywords}
			<meta name="keywords" content="{$meta_keywords|escape:'html':'UTF-8'}">
		{/if}
		<meta name="generator" content="PrestaShop" />
		<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<meta name="theme-color" content="#f05c50">
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}">
		<link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}">
		{if isset($css_files)}
			{foreach from=$css_files key=css_uri item=media}
				<link rel="stylesheet" href="{$css_uri|escape:'html':'UTF-8'}" media="{$media|escape:'html':'UTF-8'}">
			{/foreach}
			<link rel="stylesheet" media="(max-width: 1280px)" href="{$css_dir|escape:'html':'UTF-8'}max-1280px.css">
			<link rel="stylesheet" media="(max-width: 1170px)" href="{$css_dir|escape:'html':'UTF-8'}max-1170px.css">
			<link rel="stylesheet" media="(max-width: 1024px)" href="{$css_dir|escape:'html':'UTF-8'}max-1024px.css">
			<link rel="stylesheet" media="(max-width: 960px)" href="{$css_dir|escape:'html':'UTF-8'}max-960px.css">
			<link rel="stylesheet" media="(max-width: 768px)" href="{$css_dir|escape:'html':'UTF-8'}max-768px.css">
			<link rel="stylesheet" media="(max-width: 600px)" href="{$css_dir|escape:'html':'UTF-8'}max-600px.css">
			<link rel="stylesheet" media="(max-width: 480px)" href="{$css_dir|escape:'html':'UTF-8'}max-480px.css">
		{/if}
		{if isset($js_defer) && !$js_defer && isset($js_files) && isset($js_def)}
			{$js_def}
			{foreach from=$js_files item=js_uri}
			<script type="text/javascript" src="{$js_uri|escape:'html':'UTF-8'}"></script>
			{/foreach}
		{/if}
		{$HOOK_HEADER}
		<link rel="stylesheet" href="http{if Tools::usingSecureMode()}s{/if}://fonts.googleapis.com/css?family=PT+Sans:400,700,700i&amp;subset=latin-ext" type="text/css" media="all">
		<!--[if IE 8]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->
		<script src='https://www.google.com/recaptcha/api.js?hl=en'></script>
	</head>
	<body{if isset($page_name)} id="{$page_name|escape:'html':'UTF-8'}"{/if} class="{if isset($page_name)}{$page_name|escape:'html':'UTF-8'}{/if}{if isset($body_classes) && $body_classes|@count} {implode value=$body_classes separator=' '}{/if}{if $hide_left_column} hide-left-column{else} show-left-column{/if}{if $hide_right_column} hide-right-column{else} show-right-column{/if}{if isset($content_only) && $content_only} content_only{/if} lang_{$lang_iso}">
	{if !isset($content_only) || !$content_only}
		{if isset($restricted_country_mode) && $restricted_country_mode}
			<div id="restricted-country">
				<p>{l s='You cannot place a new order from your country.'}{if isset($geolocation_country) && $geolocation_country} <span class="bold">{$geolocation_country|escape:'html':'UTF-8'}</span>{/if}</p>
			</div>
		{/if}
		<!-- Global site tag (gtag.js) - Google Analytics -->
		{literal}
			<script async src="https://www.googletagmanager.com/gtag/js?id=UA-123362461-1"></script>
			<script>
				window.dataLayer = window.dataLayer || [];
				function gtag(){dataLayer.push(arguments);}
				gtag('js', new Date());
				gtag('config', 'UA-123362461-1');
			</script>
		{/literal}
		<div id="page">
			<header id="header">
				<div class="toppanel">
					<div class="container">
						<div class="row">
							<div class="site-logo">
								<a href="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}" title="{$shop_name|escape:'html':'UTF-8'}">
									<img class="logo img-responsive" src="{$logo_url}" alt="{$shop_name|escape:'html':'UTF-8'}"{if isset($logo_image_width) && $logo_image_width} width="{$logo_image_width}"{/if}{if isset($logo_image_height) && $logo_image_height} height="{$logo_image_height}"{/if}/>
								</a>
							</div>
							{if isset($HOOK_TOP)}{$HOOK_TOP}{/if}
						</div>
					</div>
				</div><!-- /.toppanel -->
				<div id="slider_row" class="row">
					{capture name='displayTopColumn'}{hook h='displayTopColumn'}{/capture}
					{if $smarty.capture.displayTopColumn}
						{$smarty.capture.displayTopColumn}
					{/if}
				</div><!-- /.slider_row -->
			</header>
			<main class="content">
				{if $page_name !='index'}
						{include file="$tpl_dir./title.tpl"}
				{/if}
				<div class="container">
					<div class="row">
						{if isset($left_column_size) && !empty($left_column_size)}
							<div id="left_column" class="col col-{$left_column_size|intval}">{$HOOK_LEFT_COLUMN}</div>
						{/if}
						{if isset($left_column_size) && isset($right_column_size)}{assign var='cols' value=(12 - $left_column_size - $right_column_size)}{else}{assign var='cols' value=12}{/if}
	{/if}
