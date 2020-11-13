require "appium_lib"
require "appium_console"
require "pry"
require "httparty"
require "httparty/request"
require "httparty/response/headers"

caps = Appium.load_appium_txt file: File.expand_path("caps/appium.txt", __dir__), verbose: true
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
