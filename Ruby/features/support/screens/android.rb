require_relative "android/screens"

class DroidScreens
  attr_accessor :home

  def initialize
    @home = HomeScreen.new
  end
end
