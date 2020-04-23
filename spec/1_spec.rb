require_relative '/home/amira/test/pages/homepage.rb'
require_relative '/home/amira/test/pages/search_results.rb'
require_relative '/home/amira/test/pages/place_pane.rb'

describe '' do
  it '' do
    @app.wait_until_search_field_visible
    @app.search_for('Atlantbh')
    expect(page).to have_content('Milana Preloga 12A')
    @app.open_result('Atlantbh')
    sleep(5)
  end

  it '' do
    @app.search_for('Hurricane')
    expect(page).to have_content('Žao nam je')
  end
end
