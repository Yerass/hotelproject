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

{* retro compatibility *}
{if !isset($title) && isset($page_header_toolbar_title)}
	{assign var=title value=$page_header_toolbar_title}
{/if}
{if isset($page_header_toolbar_btn)}
	{assign var=toolbar_btn value=$page_header_toolbar_btn}
{/if}

<div class="bootstrap">
	<div class="page-head">
		{block name=pageTitle}
		<h2 class="page-title">
			{*if isset($toolbar_btn['back'])}
			<a id="page-header-desc-{$table}{if isset($toolbar_btn['back'].imgclass)}-{$toolbar_btn['back'].imgclass}{/if}" class="page-header-toolbar-back{if isset($toolbar_btn['back'].target) && $toolbar_btn['back'].target} _blank{/if}" {if isset($toolbar_btn['back'].href)}href="{$toolbar_btn['back'].href}"{/if} title="{$toolbar_btn['back'].desc}"{if isset($toolbar_btn['back'].js) && $toolbar_btn['back'].js} onclick="{$toolbar_btn['back'].js}"{/if}>
			</a>
			{/if*}
			{if is_array($title)}{$title|end|strip_tags}{else}{$title|strip_tags}{/if}
		</h2>
		{/block}

		{block name=pageBreadcrumb}
		<ul class="breadcrumb page-breadcrumb">
			{* Container *}
			{if $breadcrumbs2.container.name != ''}
				<li class="breadcrumb-container">
					{if $breadcrumbs2.container.href != ''}<a href="{$breadcrumbs2.container.href|escape}">{/if}
					{$breadcrumbs2.container.name|escape}
					{if $breadcrumbs2.container.href != ''}</a>{/if}
				</li>
			{/if}

			{* Current Tab *}
			{if $breadcrumbs2.tab.name != '' && $breadcrumbs2.container.name != $breadcrumbs2.tab.name}
				<li class="breadcrumb-current">
					{if $breadcrumbs2.tab.href != ''}<a href="{$breadcrumbs2.tab.href|escape}">{/if}
					{$breadcrumbs2.tab.name|escape}
					{if $breadcrumbs2.tab.href != ''}</a>{/if}
				</li>
			{/if}

			{* Action *}
			{*if $breadcrumbs2.action.name != ''}
				<li class="breadcrumb-action">
					{if $breadcrumbs2.action.href != ''}<a href="{$breadcrumbs2.action.href|escape}">{/if}
					{$breadcrumbs2.action.name|escape}
					{if $breadcrumbs2.action.href != ''}</a>{/if}
				</li>
			{/if*}
			</ul>
		{/block}
		{block name=toolbarBox}
		<div class="page-bar toolbarBox">
		</div>
		{/block}
	</div>
</div>
