require_relative '/home/amira/test/pages/homepage.rb'
require_relative '/home/amira/test/pages/place_pane.rb'


class SearchResults < SitePrism::Page
  set_url_matcher 'http://www.navigator.ba/#/search/.*'
  elements :results, '.menu_content_list.search-results'
  elements :titles, 'div[title=#{query}]'

  def open_result(query)
    title.set query
    title.click
    return(PlacePane.new)
  end
end
