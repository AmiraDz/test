require_relative '/home/amira/test/pages/homepage.rb'
require_relative '/home/amira/test/pages/search_results.rb'
require_relative '/home/amira/test/pages/place_pane.rb'

describe 'testovi' do
  it do
    @app.search_for('Hurricane')
    expect(page).to have_content('Žao nam je')
  end

  it do
    @app.wait_until_search_field_visible
    @app.search_for('Atlantbh')
        .open_result





    sleep(3)
  end
end
