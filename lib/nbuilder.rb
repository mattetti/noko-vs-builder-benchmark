require 'nokogiri'
require 'action_view'
 
class NokogiriBuilder < ActionView::TemplateHandler
  include ActionView::TemplateHandlers::Compilable
 
  def compile template
    "_set_controller_content_type(Mime::XML);" +
      "xml = ::Nokogiri::XML::Builder.new { |xml|" +
      template.source +
      "}.to_xml; self.output_buffer = xml;"
  end
end
 
ActionView::Template.register_template_handler :nxml, NokogiriBuilder

# Usage:
#
# index.nxml
#
#    xml.root do
#      xml.foo do
#        xml.bar
#      end
#    end
#
# testy_controller.rb
#
#
#    class TestyController < ApplicationController
#      def index
#        respond_to do |format|
#          format.xml
#        end
#      end
#    end
#