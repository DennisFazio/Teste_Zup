require "capybara"
require "capybara/cucumber"
require "capybara/rspec"
require "date"
require "selenium-webdriver"
require "site_prism"
require "rspec"
require "pry"
require "report_builder"
require "httparty"
require "json"
require "pp"
require "faker"
require "cpf_faker"

##### VARIÁVEIS DE CONFIGURAÇÃO #####
AMBIENTE = ENV["AMBIENTE"]

##### ARQUIVOS CARREGADOS #####
CONFIG = YAML.load_file(Dir.pwd + "/fixtures/ambientes.yml")

##### CONFIG CAPYBARA #####
Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = CONFIG[AMBIENTE]
  config.default_max_wait_time = 15
  Capybara.page.driver.browser.manage.window.maximize
end
