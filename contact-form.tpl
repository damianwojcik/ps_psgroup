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
			<h3 class="page-subheading">{l s='send a message'}</h3>
			<div class="clearfix">
				<div class="col-xs-12 col-md-3">
					<input type="hidden" name="id_contact" value="2">
					<p class="text hidden">
						<label for="product">{l s='Product'}</label>
						{if isset($customerThread.product)}
							<input class="form-control grey" type="text" id="productInput" name="product" value="{$customerThread.product|escape:'htmlall':'UTF-8'}" readonly="readonly" />
						{else}
							<input class="form-control grey" type="text" id="productInput" name="product" value="" />
						{/if}
					</p>
					<p class="text">
						<label for="name">{l s='Name'}</label>
						{if isset($customerThread.name)}
							<input class="form-control grey" type="text" id="name" name="name" value="{$customerThread.name|escape:'htmlall':'UTF-8'}" readonly="readonly" />
						{else}
							<input class="form-control grey" type="text" id="name" name="name" value="" />
						{/if}
					</p> 
					<p class="text">
						<label for="phone">{l s='Phone'}</label>
						{if isset($customerThread.phone)}
							<input class="form-control grey" type="text" id="phone" name="phone" value="{$customerThread.phone|escape:'htmlall':'UTF-8'}" readonly="readonly" />
						{else}
							<input class="form-control grey" type="text" id="phone" name="phone" value="" />
						{/if}
					</p> 
					<p class="form-group">
						<label for="email">{l s='Email address'}</label>
						{if isset($customerThread.email)}
							<input class="form-control grey" type="text" id="email" name="from" value="{$customerThread.email|escape:'html':'UTF-8'}" readonly="readonly" />
						{else}
							<input class="form-control grey validate" type="text" id="email" name="from" data-validate="isEmail" value="{$email|escape:'html':'UTF-8'}" />
						{/if}
					</p>
				</div>
				<div class="col-xs-12 col-md-9">
					<div class="form-group">
						<label for="message">{l s='Message'}</label>
						<textarea class="form-control" id="message" name="message">{if isset($message)}{$message|escape:'html':'UTF-8'|stripslashes}{/if}</textarea>
					</div>
				</div>
			</div>
			<div class="submit">
				<input type="text" name="url" value="" class="hidden" />
				<input type="hidden" name="contactKey" value="{$contactKey}" />
				<button type="submit" name="submitMessage" id="submitMessage" class="button btn btn-default button-medium"><span>{l s='Send'}<i class="icon-chevron-right right"></i></span></button>
			</div>
		</fieldset>
	</form>
{/if}
{addJsDefL name='contact_fileDefaultHtml'}{l s='No file selected' js=1}{/addJsDefL}
{addJsDefL name='contact_fileButtonHtml'}{l s='Choose File' js=1}{/addJsDefL}
