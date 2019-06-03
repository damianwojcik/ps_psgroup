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
{if !isset($content_only) || !$content_only}
					{if isset($right_column_size) && !empty($right_column_size)}
						<div id="right_column" class="col col-{$right_column_size|intval} column">{$HOOK_RIGHT_COLUMN}</div>
					{/if}
					</div><!-- .row -->
				</div><!-- .container -->
			</main><!-- .content -->
			{if $page_name =='index'}
				<section class="homeform">
					<div class="container">
						<div class="row">
							<header class="section-header">
								<h2 class="section-header__subheading">{l s='Get in touch'}</h2>
								<h1 class="section-header__heading">{l s='Contact'}</h1>
							</header><!-- /.section-header -->
							<form action="{$link->getPageLink('contact-form.php')}" method="post" enctype="multipart/form-data">
								<fieldset>
									<input type="hidden" name="id_contact" value="2">
									<span class="hidden">
										<label for="product">{l s='Product'}</label>
										<input class="form-control" type="text" id="productInput" name="product" value="Home" />
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
						</div><!-- /.row -->
					</div><!-- /.container -->
				</section><!-- /.homeform -->
			{/if}
			<footer id="footer">
				<div class="container">
					<div class="row">
						<div class="site-logo">
							<a href="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}" title="{$shop_name|escape:'html':'UTF-8'}">
								<img class="logo img-responsive" src="{$logo_url}" alt="{$shop_name|escape:'html':'UTF-8'}"{if isset($logo_image_width) && $logo_image_width} width="{$logo_image_width}"{/if}{if isset($logo_image_height) && $logo_image_height} height="{$logo_image_height}"{/if}/>
							</a>
						</div>
						{if isset($HOOK_TOP)}{$HOOK_TOP}{/if}
						<p class="copy">
                        	2018 &copy; <a href="http://dwojcik.pro/" target="_blank" rel="noopener">dwojcik.pro</a>
                    	</p>
					</div><!-- /.row -->
				</div><!-- /.container -->
			</footer><!-- /#footer -->
		</div><!-- /#page -->
{/if}
{include file="$tpl_dir./global.tpl"}
	</body>
</html>