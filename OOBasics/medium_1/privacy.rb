class Machine
  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end
  
  def switch_state
    switch
  end
  
  private
  
  attr_accessor :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

# Modify this class so both flip_switch and the setter method switch= are private methods.

new_switch = Machine.new
p new_switch.start
p new_switch.switch_state
p new_switch.stop
p new_switch.switch_state