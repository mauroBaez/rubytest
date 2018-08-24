module ApplicationHelper
    def upload_server
      if Rails.env.production?
        :s3
      else
        :app
      end
    end
    def b(value, options = {})
      options = {
        :true => :positive,
        :false => :negative,
        :scope => [:boolean],
        :locale => I18n.locale
      }.merge options
      
      boolean = !!value
      key = boolean.to_s.to_sym
  
      t(options[key], :scope => options[:scope], :locale => options[:locale])
    end
end
