#= require jquery
#= require jquery_ujs
#= require foundation/foundation
#= require foundation/foundation.alert
#= require foundation/foundation.abide
#= require foundation/foundation.topbar
#= require_tree .

$ ->
  $(document).foundation()

  $('form.simple_form').on 'change', 'input, textarea, select', (e) ->
    $(this).closest('.input').removeClass('error').find('span.error').remove()
