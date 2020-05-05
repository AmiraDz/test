require_relative '/home/amira/test/pages/place_pane.rb'

class ClaimForm < SitePrism::Page
  set_url_matcher 'http://www.navigator.ba/#/claim-place/.*'
  element :ownername, "[placeholder='Vaše ime']"
  element :ownermail, "[placeholder='Vaš email']"
  element :ownerphone, "[placeholder='Vaš telefon']"
  element :submit_claim_btn, "[value='Pošalji']"
  element :cancel, ".btn.cancel"

  def fill_in_claim_form (name, email, phone)
    ownername.set name
    ownermail.set email
    ownerphone.set phone
    return(ClaimForm.new)
  end

  def submit_claim_form
    submit_claim_btn.click
    return(ClaimForm.new)
  end
end
