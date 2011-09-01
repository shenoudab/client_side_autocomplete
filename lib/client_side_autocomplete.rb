require "client_side_autocomplete/version"
require 'client_side_autocomplete/form_helper'
require 'client_side_autocomplete/autocomplete'

module ClientSideAutocomplete
    autoload :Orm              , 'client_side_autocomplete/orm'
  autoload :FormtasticPlugin , 'client_side_autocomplete/formtastic_plugin'
end

class ActionController::Base
  include ClientSideAutocomplete::Autocomplete
end

#
# Load the formtastic plugin if using Formtastic
# TODO: Better way to load plugins
begin
  require 'formtastic'
  class Formtastic::FormBuilder < ActionView::Helpers::FormBuilder
    include ClientSideAutocomplete::FormtasticPlugin
  end
rescue LoadError
end

begin
  require 'simple_form'
  require 'client_side_autocomplete/simple_form_plugin'
rescue LoadError
end
