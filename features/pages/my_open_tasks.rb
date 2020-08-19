require 'watir'

class MyOpenTasks

  def choose_task
    browser.element(xpath:"//td[@class='cell-item']//div[@class='task-item']//span[@class='task-title' and contains(., '#{$task_name}')]").click
  end

end
