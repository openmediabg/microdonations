module SimpleForm
  module Components
    module Abides
      def abide_attributes
        if /^(?<field_to_confirm>\w+)_confirmation$/ =~ attribute_name.to_s and
            object.class.validators_on(field_to_confirm).any? { |v| v.kind == :confirmation }
          input_html_options['data-equalto'] = "#{object_name}_#{field_to_confirm}"
        end
        nil
      end

      def abide_message
        options[:abide] || translate(:abides)
      end
    end
  end
end

SimpleForm::Inputs::Base.send :include, SimpleForm::Components::Abides
