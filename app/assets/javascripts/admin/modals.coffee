# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
	$('.modal-trigger').leanModal()
	return

@markSelected = (clicked) ->
	if clicked.hasClass( "selected" )
		appendImage
	else
		elems = document.getElementsByClassName('selected')
		for d in elems
			d.className = "image"
		clicked.className += " selected modal-action modal-close"
	return
