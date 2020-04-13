$(document).on 'turbolinks:load', ->
	$(".click_navbar .close").hide()
	$(".nav_trainer").hide()
	$(".click_navbar").on 'click', ->
	  $(".nav_trainer").toggle(300)
	  $(".click_navbar .close").toggle(200)
	  $(".click_navbar .open").toggle(200)