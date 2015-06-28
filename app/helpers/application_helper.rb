module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end


end

module ActionView
  module Helpers
    class FormBuilder 
      def datetime_select(method, options = {}, html_options = {})
        existing_time = @object.send(method) 
        @template.content_tag(:div, :class => "input-group") do    
          text_field(method, :value => existing_time, :class => "form-control datetimepicker", :"data-date-format" => "YYYY-MM-DD HH:mm") +
          @template.content_tag(:span, @template.content_tag(:span, "", :class => "glyphicon glyphicon-calendar") ,:class => "input-group-addon")
        end
      end
    end
  end
end