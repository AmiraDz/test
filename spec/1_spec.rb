require_relative '/home/amira/test/pages/homepage.rb'
require_relative '/home/amira/test/pages/search_results.rb'
require_relative '/home/amira/test/pages/place_pane.rb'
require_relative '/home/amira/test/pages/place_form.rb'
require_relative '/home/amira/test/pages/suggest_form.rb'


describe 'testovi' do
  it do
    @app.search_for('Hurricane')
    expect(page).to have_content('Žao nam je')
  end

  it do
    @app.search_for('Dos Hermanos')
        .open_result
  end

  it do
    @app.open_place_form
  end

  it do
    @app.open_suggest_form
        .fill_in_suggestion_form('amira dz', 'adz@gmail.com', 'neki komentar')
        .submit_suggestion_form

    sleep(3)
  end


end
