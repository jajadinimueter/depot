# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "ready page:change", ->		# Iteration F5 (Chapter 11.5, p. 153)
  $('.store .entry > img').click ->
    $(this).parent().find(':submit').click()
