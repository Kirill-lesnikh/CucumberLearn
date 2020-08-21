require_relative 'header'
class OpenTasks < Header

  # Elements

  def course_obj
    browser.element(xpath:"//td[@class='cell-item']//div[@class='task-item']//span[contains(., '#{ENV['COURSE_NAME']}')]/..")
  end

  def course_score
    browser.element(xpath:"//td[@class='cell-item']//div[@class='task-item']//span[contains(., '#{ENV['COURSE_NAME']}')]//ancestor::tr//span[@class='score-nowrap']")
  end

  def scroller
    browser.element(css:"#course_summary_form_scroller")
  end

  def btn_continue_course
    browser.element(css:"#course_summary_continue")
  end



  # Cell progress: //td[@class='cell-item']//div[@class='task-item']//span[contains(., 'new course')]//ancestor::tr//td[@class='cell-progress']
  # Cell score: //td[@class='cell-item']//div[@class='task-item']//span[contains(., 'new course')]//ancestor::tr//span[@class='score-nowrap']

  # Methods

  def choose_course
    course_obj.click
  end

  def continue_course
    btn_continue_course.click
  end

end
