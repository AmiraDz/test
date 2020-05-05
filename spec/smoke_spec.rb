require_relative '/home/amira/test/pages/claim_form.rb'
require_relative '/home/amira/test/pages/header_footer.rb'
require_relative '/home/amira/test/pages/homepage.rb'
require_relative '/home/amira/test/pages/place_form.rb'
require_relative '/home/amira/test/pages/place_pane.rb'
require_relative '/home/amira/test/pages/search_results.rb'
require_relative '/home/amira/test/pages/suggest_form.rb'

describe 'smoke test' do
  it 'should search' do
    @app.search_for('Sloga')
    expect(page).to have_content('Mehmeda Spahe 20')
  end

  it 'should create place' do
    @app.open_place_form
        .fill_in_place_details('Zee & Lu', 'Sarajevo', '71000', 'Džemala Bijedića', '129')
        .choose_place_category('Kafa')
        .fill_in_place_webcontact('https://www.facebook.com/lu83zee79', 'https://www.instagram.com/zee.lu.cafe/')
        .submit_place_form
    expect(page).to have_content('Vaš objekat?')
  end
end
