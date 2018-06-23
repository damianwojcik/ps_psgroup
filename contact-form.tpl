{*
* 2007-2017 PrestaShop
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
*  @copyright  2007-2017 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{capture name=path}{l s='Contact'}{/capture}
<h1 class="page-heading bottom-indent">
	{l s='Customer service'} - {if isset($customerThread) && $customerThread}{l s='Your reply'}{else}{l s='Contact us'}{/if}
</h1>
{if isset($confirmation)}
	<p class="alert alert-success">{l s='Your message has been successfully sent to our team.'}</p>
	<ul class="footer_links clearfix">
		<li>
			<a class="btn btn-default button button-small" href="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}">
				<span>
					<i class="icon-chevron-left"></i>{l s='Home'}
				</span>
			</a>
		</li>
	</ul>
{elseif isset($alreadySent)}
	<p class="alert alert-warning">{l s='Your message has already been sent.'}</p>
	<ul class="footer_links clearfix">
		<li>
			<a class="btn btn-default button button-small" href="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}">
				<span>
					<i class="icon-chevron-left"></i>{l s='Home'}
				</span>
			</a>
		</li>
	</ul>
{else}
	{include file="$tpl_dir./errors.tpl"}
	<form action="{$request_uri}" method="post" class="contact-form-box" enctype="multipart/form-data">
		<fieldset>
			<input type="hidden" name="id_contact" value="2">
			<span class="hidden">
				<label for="product">{l s='Product'}</label>
				<input class="form-control productInput" type="text" id="productInput" name="product" value="" />
			</span>
			<div class="form-row">
				<div class="form-group">
					<label class="visuallyhidden" for="name">{l s='Name'}</label>
					<input class="form-control" type="text" id="name" name="name" value="" placeholder="{l s='Name'}"/>
				</div>
				<div class="form-group">
					<label class="visuallyhidden" for="phone">{l s='Phone Number'}</label>
					<input class="form-control" type="text" id="phone" name="phone" value="" placeholder="{l s='Phone Number'}"/>
				</div>
				<div class="form-group">
					<label class="visuallyhidden" for="email">{l s='E-mail'}</label>
					<input class="form-control validate" type="text" id="email" name="from" data-validate="isEmail" value="" placeholder="{l s='E-Mail'}"/>
				</div>
			</div>
			<div class="form-group textarea-group">
				<label class="visuallyhidden" for="message">{l s='Message'}</label>
				<textarea class="form-control" id="message" name="message" placeholder="{l s='Message'}"></textarea>
			</div>
			<div class="text-center">
				<div class="recaptcha-wrapper">
					<div class="g-recaptcha cf" data-sitekey="6Lc8tV8UAAAAAJnvKADSKqElkcys2bFDXWJ2xWzA"></div>
				</div>
				<button type="submit" name="submitMessage" id="submitMessage" class="btn">
					{l s='Send message'}
				</button>
			</div>
		</fieldset>
	</form>
{/if}
{addJsDefL name='contact_fileDefaultHtml'}{l s='No file selected' js=1}{/addJsDefL}
{addJsDefL name='contact_fileButtonHtml'}{l s='Choose File' js=1}{/addJsDefL}
