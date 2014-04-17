# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  form_button = $('#submit_user_form')
  form_button.attr('disabled', 'disabled')

  email_regexp = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
  phone_regexp = /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/
  initials_regexp = /[а-яА-Я]\[a-zA-Z]/

  $('#user_email').on('keyup', ->
    if email_regexp.test($(this).val())
      form_button.removeAttr('disabled')
      form_button.addClass('valid_form')
    else
      form_button.attr('disabled', 'disabled')
      form_button.removeClass('valid_form')
  )

  $('#user_phone').on('keyup', ->
    if phone_regexp.test($(this).val())
      form_button.removeAttr('disabled')
      form_button.addClass('valid_form')
    else
      form_button.attr('disabled', 'disabled')
      form_button.removeClass('valid_form')
  )
  $('#user_initials').on('keyup', ->
    if initials_regexp.test($(this).val())
      form_button.removeAttr('disabled')
      form_button.addClass('valid_form')
    else
      form_button.attr('disabled', 'disabled')
      form_button.removeClass('valid_form')
  )