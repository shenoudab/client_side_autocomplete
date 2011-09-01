module ClientSideAutocomplete
  module Orm
    autoload :ActiveRecord , 'client_side_autocomplete/orm/active_record'
		autoload :Mongoid      , 'client_side_autocomplete/orm/mongoid'
		autoload :MongoMapper  , 'client_side_autocomplete/orm/mongo_mapper'
  end
end

