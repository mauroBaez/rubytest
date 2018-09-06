module ActiveAdmin
  class FormBuilder < ::Formtastic::FormBuilder
    def has_many_as_table(association, options = {}, &block)
      options = { :for => association }.merge(options)
      options[:class] ||= ""
      options[:class] << "inputs has_many_fields"
      # Add Delete Links
      form_block = proc do |has_many_form|
        block.call(has_many_form) + if has_many_form.object.new_record?
                                      template.content_tag :li do
                                        template.link_to I18n.t('active_admin.has_many_delete'), "#", :onclick => "$(this).closest('.has_many_fields').remove(); return false;", :class => "button"
                                      end
                                    else
                                    end
      end
      content = with_new_form_buffer do
        template.content_tag :div, :class => "has_many #{association}" do         

          # form_buffers.last << template.content_tag(:h3, association.to_s.titlecase)
          # CHANGED INTO
          form_buffers.last << template.content_tag(:h3, I18n.t('custom_translations.'+association.to_s))
          form_buffers.last << template.content_tag(:p, I18n.t('custom_translations.'+association.to_s))

          inputs options, &form_block

          # Capture the ADD JS
          js = with_new_form_buffer do
            inputs_for_nested_attributes  :for => [association, object.class.reflect_on_association(association).klass.new],
                                          :class => "inputs has_many_fields",
                                          :for_options => {
                                            :child_index => "NEW_RECORD"
                                          }, &form_block
          end
          js = template.escape_javascript(js)
          _model = 'activerecord.models.' + association.to_s.singularize
          _translated_model = I18n.t(_model)
          js = template.link_to I18n.t('active_admin.has_many_new', :model => _translated_model), "#", :onclick => "$(this).before('#{js}'.replace(/NEW_RECORD/g, new Date().getTime())); return false;", :class => "button"

          form_buffers.last << js.html_safe
        end
      end
      form_buffers.last << content.html_safe
    end
  end
end