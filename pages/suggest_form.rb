require_relative '/home/amira/test/pages/homepage.rb'

class SuggestForm < SitePrism::Page
  set_url 'http://www.navigator.ba/#/feedback'

    element :name_lastname, "[name='name_surname']"
    element :email, "[placeholder='Email']"
    element :comment, "textarea[name='comment']"
    element :praise_radio, ".green > input[name='type']"
    element :critique_radio, ".red > input[name='type']"
    element :send, "[value='Pošalji']"
    element :quit, ".grey-button"

  def fill_in_suggestion_form(name, mail, comm)
    name_lastname.set name
    email.set mail
    comment.set comm
    return(SuggestForm.new)
  end

  def submit_suggestion_form
    send.click
    return(SuggestForm.new)
  end
end
