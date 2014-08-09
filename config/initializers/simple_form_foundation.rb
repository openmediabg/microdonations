SimpleForm.setup do |config|
  config.wrappers :foundation, class: :input, hint_class: :field_with_hint, error_class: :error do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :abide_attributes
    b.use :label_input
    b.use :error, wrap_with: { tag: :span, class: :error }
    b.use :abide_message, wrap_with: { tag: :span, class: 'abide-message' }
    b.use :hint,  wrap_with: { tag: :span, class: :hint }
  end

  config.button_class = 'button'
  config.error_notification_class = 'alert-box alert'
  config.default_wrapper = :foundation
  config.browser_validations = true
end
