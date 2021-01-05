# Behold this incomplete class for constructing boxed banners.

class Banner
  def initialize(message, width = nil)
    @message = message
    @width = width
  end

  def to_s
    if @width == nil
      @width = @message.size + 4
      [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
    elsif @width > (@message.size + 2)
      [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
    else
      [horizontal_rule, empty_line,short_message_line, empty_line, horizontal_rule].join("\n")
    end
  end

  private

  def horizontal_rule
    "+" + '-'*(@width - 2 ) + '+'
  end

  def empty_line
    "|" + ' '*(@width - 2) + '|'
  end

  def message_line
    "|" + "#{@message.center(@width - 2)}" + "|"
  end
  
  def short_message_line
    short_message = @message[0...(@width - 4)]
    "| " + "#{short_message}" + " |"  
  end
end

# Complete this class so that the test cases shown below work as intended. 
# You are free to add any methods or instance variables you need. 
# However, do not make the implementation details public.

# You may assume that the input will always fit in your terminal window.

banner = Banner.new('To boldly go where no one has gone before.', 20)
puts banner


=begin
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
=end

banner = Banner.new('', 50)
puts banner

=begin
+--+
|  |
|  |
|  |
+--+
=end