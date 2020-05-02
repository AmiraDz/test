require_relative '/home/amira/test/pages/header_footer.rb'
require_relative '/home/amira/test/pages/homepage.rb'
require_relative '/home/amira/test/pages/place_pane.rb'

class PlaceForm < SitePrism::Page
  set_url 'http://www.navigator.ba/#/create-place'
  set_url_matcher 'http://www.navigator.ba/#/edit-place/.*'
  element :place_name, 'input#poi_name'
  element :city, 'input#poi_city_name'
  element :zipcode, 'input#poi_zip_code'
  element :street, 'input#poi_place_id'
  element :street_no, 'input#poi_house_number'
  element :street_alt, 'input#poi_street_name_alt'
  element :description, 'textarea#poi_description'
  element :category_button, "[title='Odaberite kategoriju']"
  element :dropdown, 'select'
  element :tagit, '.tagit-new [autocomplete]'
  elements :workdays, '.days-buttons.row'
  element :work_from, '.row.whours_input > input:nth-of-type(1)'
  element :work_to, '.row.whours_input > input:nth-of-type(2)'
  element :add_workhr, '.btn.btnAddWorkingHours'
  element :land_phone, 'input#poi_phone'
  element :mobile_phone, 'input#poi_mobile_phone'
  element :fax, 'input#poi_mobile_phone'
  element :website, 'input#poi_web'
  element :email, 'input#poi_email'
  element :fb_url, 'input#poi_facebook_url'
  element :twit_url, 'input#poi_twitter_url'
  element :ig_url, 'input#poi_instagram_url'
  element :fsq_url, 'input#poi_foursqare_url'
  element :wiki_url, 'input#poi_wikipedia_url'
  element :tripadv_url, 'input#poi_tripadvisor_url'
  element :yt_url, 'input#poi_youtube_url'
  element :ig_hash, 'input#poi_instagram_hashtag'
  element :wifi_chkbox, 'input#poi_has_wifi'
  element :wifi_pw, 'input#poi_has_wifi'
  element :wifi_name, 'input#poi_wifi_ssid'
  element :credit_chkbox, 'input#poi_accepts_credit_cards'
  element :photo_upload, 'input#fileToUpload'
  element :comment, 'textarea#poi_comment'
  element :submit, '.btn.btn-success'
  element :cancel, '.btn.cancel'

  def required_details(name, city_name, code, str_name, str_no)
    place_name.set name
    city.set city_name
    zipcode.set code
    street.set str_name
    street_no.set str_no
    return(PlaceForm.new)
  end


end
