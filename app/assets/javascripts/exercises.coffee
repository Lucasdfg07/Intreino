$(document).on 'turbolinks:load', ->
  $('.exercise_form textarea').keyup (e) ->
  		if (e.keyCode == 13)
  			$('.exercise_form').submit()

  $('.exercise input').keyup (e) ->
	  	$('.exercise_form').submit()

  $('.exercise_form').on 'submit', (e) ->
	$.ajax e.target.action,
	    type: 'PUT'
	    dataType: 'json',
	    data: $(".exercise_form").serialize()
	return false