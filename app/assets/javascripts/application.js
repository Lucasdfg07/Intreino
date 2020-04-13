//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery3
//= require materialize-sprockets
//
// Select2
//= require select2
//
// MorrisJs
//= require raphael
//= require morris
//
//= require serviceworker-companion
//= require_tree .

$( document ).on('turbolinks:load', function() {
	// Navbar
	$(".click_navbar .close").hide();
	$(".nav_trainer").hide();
	$(".click_navbar").click(function() {
	  $(".nav_trainer").toggle(300);
	  $(".click_navbar .close").toggle(200);
	  $(".click_navbar .open").toggle(200);
	});
});