require_relative '/home/amira/test/pages/search_results.rb'

class PlacePane < SitePrism::Page
  set_url_matcher 'http://www.navigator.ba/#/p/.*'
  element :change_button, '.btn.btn-success.btn-suggest-edit'
  element :claim_button, '.btn.btn-claim'

end
