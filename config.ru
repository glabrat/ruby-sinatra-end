# config.ru

#using modular approach

require File.expand_path(File.dirname(__FILE__) + '/app/boot')

#map('/') { run MyApp::App }

run Rack::Builder.new {
  map "/" do
    run MyApp::App
  end
}
