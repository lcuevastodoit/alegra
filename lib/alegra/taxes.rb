module Alegra
  class Taxes < Alegra::Record
    def find(id)
      client.get("taxes/#{ id }")
    end

    # Return all taxes
    # @return [ Array ]
    def list()
      client.get('taxes')
    end

    def create(params)
      _params = params.deep_camel_case_lower_keys
      client.post('taxes', _params)
    end

    def update(id, params)
      _params = params.deep_camel_case_lower_keys
      client.put("taxes/#{ id }", _params)
    end

    # @param id [ Integer ]
    # @return [ Hash ]
    def delete(id)
      client.delete("taxes/#{ id }")
    end
  end
end
