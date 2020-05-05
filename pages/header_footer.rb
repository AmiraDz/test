require_relative '/home/amira/test/pages/homepage.rb'

class Header < SitePrism::Section
  element :fblink, ''
  element :twitterlink, ''
  element :eng_btn, ''
  element :bs_btn, ''
end

class Footer < SitePrism::Section
  element :about, ''
  element :leaflet, ''
  element :atlantbh, ''
end
