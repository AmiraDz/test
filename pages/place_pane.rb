require_relative '/home/amira/test/pages/claim_form.rb'
require_relative '/home/amira/test/pages/place_form.rb'

class PlacePane < SitePrism::Page
  set_url_matcher 'http://www.navigator.ba/#/p/.*'
  element :change_button, '.btn.btn-success.btn-suggest-edit'
  element :claim_button, '.btn.btn-claim'

  def open_claim_form
    claim_button.click
    return(ClaimForm.new)
  end
end
