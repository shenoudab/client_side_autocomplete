module Rails3JQueryAutocomplete
  module Orm
    module Mongoid
      def get_autocomplete_order(method, options, model=nil)
        order = options[:order]
        if order
          order.split(',').collect do |fields|
            sfields = fields.split
            [sfields[0].downcase.to_sym, sfields[1].downcase.to_sym]
          end
        else
          [[method.to_sym, :asc]]
        end
      end

      def get_autocomplete_items(parameters)
        model          = parameters[:model]
        method         = parameters[:method]
        options        = parameters[:options]
        is_full_search = options[:full]
        term           = parameters[:term]
        limit          = get_autocomplete_limit(options)
        order          = get_autocomplete_order(method, options)

        search = (is_full_search ? '.*' : '^') + term + '.*'
        items  = model.where(method.to_sym => /#{search}/i).limit(limit).order_by(order)
      end
    end
  end
end
