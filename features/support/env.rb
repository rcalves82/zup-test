require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec/expectations'
require 'net/http'
require 'uri'
require 'rubygems'
require 'selenium/webdriver'
require 'headless'
require 'rubygems'


if ENV['chrome']
    Capybara.default_driver = :chrome
    Capybara.register_driver :chrome do |app|
      options = {
        js_errors: false,
        timeout: 60,
        debug: false,
        inspector: false
      }
      browser_options = ::Selenium::WebDriver::Chrome::Options.new
      caps = Selenium::WebDriver::Remote::Capabilities.chrome(loggingPrefs: { browser: 'INFO' })
      browser_options.args << '--no-sandbox'
      browser_options.args << '--disable-infobars'
      Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options, desired_capabilities: caps)
    end
  elsif ENV['headless']
    Capybara.default_driver = :chrome
    Capybara.register_driver :chrome do |app|
      options = {
        js_errors: false,
        timeout: 60,
        debug: false,
        inspector: false
      }
      browser_options = ::Selenium::WebDriver::Chrome::Options.new
      browser_options.args << '--headless'
      browser_options.args << '--start-maximized'
      browser_options.args << '--no-sandbox'
      browser_options.args << '--disable-infobars'
      browser_options.args << '--window-size=1325x744'
      browser_options.add_preference(:download,
                                     directory_upgrade: true,
                                     prompt_for_download: false,
                                     default_directory: './download/')
  
      browser_options.add_preference(:browser, set_download_behavior: { behavior: 'allow' })
      Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options) # , desired_capabilities: capabilities)
    end
  elsif ENV['firefox']
    Capybara.default_driver = :firefox
    Capybara.register_driver :firefox do |app|
      options = {
        js_errors: true,
        timeout: 60,
        debug: false,
        inspector: false
      }
      capabilities = Selenium::WebDriver::Remote::Capabilities.firefox(
        accept_insecure_certs: true,
        Type: 'MANUAL',
        SOCKS: '192.168.222.236:1080'
      )
      Capybara::Selenium::Driver.new(app, browser: :firefox, desired_capabilities: capabilities)
    end
   end
   
   Capybara.default_max_wait_time = 20