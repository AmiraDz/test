require_relative '/home/amira/test/pages/homepage.rb'
require_relative '/home/amira/test/pages/search_results.rb'


class PlacePane < SitePrism::Page
  set_url_matcher 'http://www.navigator.ba/#/p/.*'
end
