require 'viagogo/country'
require 'viagogo/page'
require 'viagogo/utils'

module Viagogo
  module Public
    module API
      module Countries
        include Viagogo::Utils

        def country(code, params={})
          object_from_response(Viagogo::Country,
                               Viagogo::CountryRepresenter,
                               :get,
                               "/Public/Country/#{code}",
                               params)
        end

        def countries(params={})
          object_from_response(Viagogo::Page,
                               Viagogo::CountryPageRepresenter,
                               :get,
                               "/Public/Country/All",
                               params)
        end
      end
    end
  end
end
