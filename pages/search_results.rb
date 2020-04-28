require_relative '/home/amira/test/pages/homepage.rb'
require_relative '/home/amira/test/pages/place_pane.rb'


class SearchResults < SitePrism::Page
  set_url_matcher 'http://www.navigator.ba/#/search/.*'
  elements :results, '.menu_content_list.search-results'

  def open_result
    results[0].click
    return(PlacePane.new)
  end
end
