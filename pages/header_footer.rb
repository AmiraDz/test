require_relative '/home/amira/test/pages/homepage.rb'

class Footer < SitePrism::Page
  set_url_matcher 'http://www.navigator.ba/.*'
  element :fblink, ''
  element :twitterlink, ''
  element :eng_btn, ''
  element :bs_btn, ''
  element :about, ''
  element :leaflet, ''
  element :atlantbh, ''
end
