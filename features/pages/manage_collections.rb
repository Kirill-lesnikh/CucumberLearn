class ManageCollections < Header

  # Elements

  def btn_add_course
    browser.element(xpath:"//div[contains(@class, 'mct-action-new-course')]")
  end

  def btn_add_course_courses
    browser.element(xpath:"//ul[contains(@class, 'allego-mct-newchannel-menu')]/li/span[contains(., 'Courses')]/..")
  end

  def created_course
    browser.element(xpath:"//td[contains(.,'#{ENV['COURSE_NAME']}')]")
  end

  # Methods

  def add_new_course
    btn_add_course.click
    btn_add_course_courses.click
  end

end
