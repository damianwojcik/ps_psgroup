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
					</div><!-- #center_column -->
					{if isset($right_column_size) && !empty($right_column_size)}
						<div id="right_column" class="col-xs-12 col-sm-{$right_column_size|intval} column">{$HOOK_RIGHT_COLUMN}</div>
					{/if}
					{if $page_name =='index'}
						<form action="/kontakt" method="post" class="contact-form-box" enctype="multipart/form-data">
							<fieldset>
								<h3 class="page-subheading">{l s='send a message'}</h3>
								<div class="clearfix">
									<div class="col-xs-12 col-md-3">
										<input type="hidden" name="id_contact" value="2">
										<div class="form-group selector1">
											<p class="text hidden">
												<label for="product">{l s='Product'}</label>
												<input class="form-control grey" type="text" id="productInput" name="product" value="Home" />
											</p>
											<p class="text">
												<label for="name">{l s='Name'}</label>
												<input class="form-control grey" type="text" id="name" name="name" value="" />
											</p>
											<p class="text">
												<label for="phone">{l s='Phone'}</label>
												<input class="form-control grey" type="text" id="phone" name="phone" value="" />
											</p>
											<p class="form-group">
												<label for="email">{l s='Email address'}</label>
												<input class="form-control grey validate" type="text" id="email" name="from" data-validate="isEmail" value="" />
											</p>
										</div>
										
										<div class="submit">
											<button type="submit" name="submitMessage" id="submitMessage" class="button btn btn-default button-medium"><span>Send<i class="icon-chevron-right right"></i></span></button>
										</div>
									</div>
									<div class="col-xs-12 col-md-9">
										<div class="form-group">
											<label for="message">{l s='Message'}</label>
											<textarea style="min-height:100px;" class="form-control" id="message" name="message">Question about</textarea>
										</div>
									</div>
								</div>
							</fieldset>
						</form>
					{/if}
					</div><!-- .row -->
				</div><!-- #columns -->
			</div><!-- .columns-container -->
			{if isset($HOOK_FOOTER)}
				<!-- Footer -->
				<div class="footer-container">
					<footer id="footer"  class="container">
						<div class="row">{$HOOK_FOOTER}</div>
					</footer>
				</div><!-- #footer -->
			{/if}
		</div><!-- #page -->
{/if}
{include file="$tpl_dir./global.tpl"}
	</body>
</html>