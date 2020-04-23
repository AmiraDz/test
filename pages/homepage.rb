require_relative '/home/amira/test/pages/search_results.rb'
require_relative '/home/amira/test/pages/place_pane.rb'


class HomePage < SitePrism::Page
  set_url 'http://www.navigator.ba/'
  element :search_field, '.ember-text-field.ember-view.tt-query'
  element :search_button, '.iconav-search'

  def search_for(query)
    search_field.set query
    search_button.click
    return(SearchResults.new)
  end
end