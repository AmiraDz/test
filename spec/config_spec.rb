require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there'

require_relative '/home/amira/test/pages/claim_form.rb'
require_relative '/home/amira/test/pages/header_footer.rb'
require_relative '/home/amira/test/pages/homepage.rb'
require_relative '/home/amira/test/pages/place_form.rb'
require_relative '/home/amira/test/pages/place_pane.rb'
require_relative '/home/amira/test/pages/search_results.rb'
require_relative '/home/amira/test/pages/suggest_form.rb'

RSpec.configure do |config|
  config.before(:all) do
    Capybara::Session.new :selenium
    current_window.fullscreen
  end

  config.before(:each) do
    @app = HomePage.new
    @app.load
  end
end

Capybara.register_driver :site_prism do |app|
  browser = ENV.fetch('browser', 'chrome').to_sym
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
  config.default_driver = :site_prism
  config.ignore_hidden_elements = false
  config.default_max_wait_time = 5
end
