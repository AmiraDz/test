require_relative '/home/amira/test/pages/claim_form.rb'
require_relative '/home/amira/test/pages/header_footer.rb'
require_relative '/home/amira/test/pages/homepage.rb'
require_relative '/home/amira/test/pages/place_form.rb'
require_relative '/home/amira/test/pages/place_pane.rb'
require_relative '/home/amira/test/pages/search_results.rb'
require_relative '/home/amira/test/pages/suggest_form.rb'

describe 'regression test' do
  it 'should claim place' do
    @app.search_for('Dos Hermanos')
        .open_result
        .open_claim_form
        .fill_in_claim_form('Amira', 'amirin@mejl.com', '062666666')
        .submit_claim_form
    expect(page).to have_content('Poruka uspješno poslana.')
  end
end
