require_relative '/home/amira/test/pages/homepage.rb'

class SuggestForm < SitePrism::Page
  set_url 'http://www.navigator.ba/#/feedback'
  element :name_lastname, "input[name='name_surname']"
  element :email, "input[name='email']"
  element :comment, "textarea[name='comment']"
  element :praise_radio, ".green > input[name='type']"
  element :critique_radio, ".red > input[name='type']"
  element :send, "[value='Pošalji']"
  element :quit, ".grey-button"

end
