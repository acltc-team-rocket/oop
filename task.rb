class Task
  
  def initialize(name, priority)
    @name = name
    @priority = priority
    @complete = false
  end

  def name
    @name
  end

  def complete
    @complete
  end

  def priority
    @priority
  end

  def complete!
    @complete = true
  end

  def toggle_complete!
    @complete = !@complete
  end
end