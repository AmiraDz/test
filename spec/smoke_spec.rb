require_relative '/home/amira/test/pages/claim_form.rb'
require_relative '/home/amira/test/pages/header_footer.rb'
require_relative '/home/amira/test/pages/homepage.rb'
require_relative '/home/amira/test/pages/place_form.rb'
require_relative '/home/amira/test/pages/place_pane.rb'
require_relative '/home/amira/test/pages/search_results.rb'
require_relative '/home/amira/test/pages/suggest_form.rb'

describe 'smoke test' do
  it 'should search' do
    @app.search_for('Dos Hermanos')
        .open_result
  end
end
