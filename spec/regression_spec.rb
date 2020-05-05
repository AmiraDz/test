require_relative '/home/amira/test/pages/claim_form.rb'
require_relative '/home/amira/test/pages/header_footer.rb'
require_relative '/home/amira/test/pages/homepage.rb'
require_relative '/home/amira/test/pages/place_form.rb'
require_relative '/home/amira/test/pages/place_pane.rb'
require_relative '/home/amira/test/pages/search_results.rb'
require_relative '/home/amira/test/pages/suggest_form.rb'

describe 'regression test' do
  it 'should not find result for nonexisting place' do
    @app.search_for('Drugstore')
    expect(page).to have_content('Žao nam je')
  end

  it 'should find result for extant place' do
    @app.search_for('Atlantbh')
    expect(page).to have_content('Milana Preloga 12A')
  end

  it 'should not claim place w incomplete data' do
    @app.search_for('Dos Hermanos')
        .open_result
        .open_claim_form
        .submit_claim_form
    expect(page).not_to have_content('Poruka uspješno poslana.')
  end

  it 'should claim place' do
    @app.search_for('Dos Hermanos')
        .open_result
        .open_claim_form
        .fill_in_claim_form('Amira', 'amirin@mejl.com', '062666666')
        .submit_claim_form
    expect(page).to have_content('Poruka uspješno poslana.')
  end

  it 'should not suggest idea w incomplete data' do
    @app.open_suggest_form
        .submit_suggestion_form
    expect(page).not_to have_content('Hvala na poruci! Potrudit ćemo se da što prije reagujemo.')

  end

  it 'should suggest idea' do
    @app.open_suggest_form
        .fill_in_suggestion_form('Amira', 'amirin@mejl.com','super')
        .submit_suggestion_form
    expect(page).to have_content('Hvala na poruci! Potrudit ćemo se da što prije reagujemo.')
  end

  it 'should not create place w incomplete data' do
    @app.open_place_form
        .fill_in_place_details('', 'Sarajevo', '71000', 'Džemala Bijedića', '129')
        .choose_place_category('Hrana')
        .fill_in_place_phones('', '061222066', '')
        .fill_in_place_webcontact('https://www.facebook.com/pekarafarina', 'https://www.instagram.com/pekara_farina/')
        .submit_place_form
    expect(page).to have_content('Forma sadrži nevalidne podatke')
  end

  it 'should create place' do
    @app.open_place_form
        .fill_in_place_details('Farina', 'Sarajevo', '71000', 'Džemala Bijedića', '129')
        .choose_place_category('Hrana')
        .fill_in_place_phones('', '061222066', '')
        .fill_in_place_webcontact('https://www.facebook.com/pekarafarina', 'https://www.instagram.com/pekara_farina/')
        .submit_place_form
    expect(page).to have_content('Vaš objekat?')
  end
end
