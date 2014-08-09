module SimpleForm
  module Components
    module Abides
      def abide_attributes
        if field_to_confirm
          input_html_options['data-equalto'] = "#{object_name}_#{field_to_confirm}"
        end
        nil
      end

      def abide_message
        options[:abide] || translate(:abides) || infer_validation_message
      end

      private

      def infer_validation_message
        if field_to_confirm
          object.errors.generate_message(attribute_name, :confirmation)
        elsif has_required?
          object.errors.generate_message(attribute_name, :required)
        end
      end

      def field_to_confirm
        if /^(?<field_to_confirm>\w+)_confirmation$/ =~ attribute_name.to_s and
            object.class.validators_on(field_to_confirm).any? { |v| v.kind == :confirmation }
          field_to_confirm
        end
      end
    end
  end
end

SimpleForm::Inputs::Base.send :include, SimpleForm::Components::Abides
