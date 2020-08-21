require 'watir'

class BasePage

  # OBJECTS AVAILABLE ON EVERY PAGE

  # Methods

  def page(cls)
    cls.new
  end



end
