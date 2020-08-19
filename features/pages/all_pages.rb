class AllPages

  def element_exists?(element)
    find_elements(element).size > 0
  end

  def putsmth
    Kernel.puts 'Hello from ancestor'
  end
end
