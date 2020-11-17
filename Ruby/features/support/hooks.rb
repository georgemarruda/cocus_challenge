require "report_builder"
require "date"
require "socket"

Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 30

  device_type = "android"
  @screen = DroidScreens.new if device_type.eql?("android")
  @screen = IOSScreen.new if device_type.eql?("ios")
end

After do
  driver.quit_driver
end

at_exit do
  ReportBuilder.configure do |config|
    config.input_path = "log/report.json"
    config.report_path = "log/report"
    config.report_types = [:html]
    config.report_title = "Cocus Project - Notes"
    config.color = "indigo"
  end
  ReportBuilder.build_report
end
