=begin
**Problem**
Create a clock that is independent of date.

You should be able to add minutes to and subtract minutes from the time represented by a given clock object. 
Two clock objects that represent the same time should be equal to each other.

You may not use any built-in date or time functionality; just use airthmetic operations.


Rules:
Explicit
  - Input: 
  - Output: 
  - cannot use any built in date or time functionality
  - must be able to add and subtract minutes
  - clock is independent of dates
  - two clock objects with the same time should be equal (#== method)
  - 24 hours total
  - 60 minutes total
  - #to_s method should return string of current time military format
  - #at class method sets time
    - first parameter is integer and sets hour
    - second paramenter is integer and sets minutes
  - #+ method will add minutes
  - #- method will subtract minuites

**Examples / Test Cases**
Clock.at(8).to_s == '08:00'
Clock.at(11, 9).to_s == '11:09'
Clock.at(10) + 3 = '10:03'
Clock.at(0) - 50 = '23:10

**Data Structures**
@hours = to hold hours
@minutes = to hold minutes

#to_s method to return formated string

#+ will updated @hours and @minutes

#- will update @hours and @minutes


**Algorithm**


=end
require 'pry'

class Clock

  def initialize(hours, minutes)
    @hours = hours
    @minutes = minutes
  end
  
  def self.at(hours = 0, minutes = 0)
    new(hours, minutes)
  end
  
  def to_s
   hours_string = time_to_s(@hours)
   minutes_string = time_to_s(@minutes)
   "#{hours_string}:#{minutes_string}"
  end
  
  def +(adjustment)
    @minutes += adjustment
    until @minutes <= 60
      @minutes -= 60
      @hours += 1
      @hours = 0 if @hours > 23
    end
    Clock.at(@hours, @minutes)
  end
  
  def -(adjustment)
    @minutes -= adjustment
    until @minutes >= 0
      @minutes += 60
      @hours -= 1
      @hours = 23 if @hours < 0
    end
    Clock.at(@hours, @minutes)
  end
  
  def ==(other_clock)
    return true if other_clock.to_s == Clock.at(@hours, @minutes).to_s
    false
  end
  
  private
  
  def time_to_s(time)
    time < 10 ? "0#{time.to_s}" : time.to_s
  end
  
end

puts Clock.at(8).to_s
clock =  Clock.at(8) + 3
puts clock.to_s
clock = Clock.at(0) - 3
puts clock.to_s
clock = Clock.at(23, 30) + 60
puts clock.to_s


# launch school solution

=begin
class Clock
  attr_reader :hour, :minute

  ONE_DAY = 24 * 60

  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

  def self.at(hour, minute=0)
    new(hour, minute)
  end

  def +(add_minutes)
    minutes_since_midnight = compute_minutes_since_midnight + add_minutes
    while minutes_since_midnight >= ONE_DAY
      minutes_since_midnight -= ONE_DAY
    end

    compute_time_from(minutes_since_midnight)
  end

  def -(sub_minutes)
    minutes_since_midnight = compute_minutes_since_midnight - sub_minutes
    while minutes_since_midnight < 0>
      minutes_since_midnight += ONE_DAY
    end

    compute_time_from(minutes_since_midnight)
  end

  def ==(other_time)
    hour == other_time.hour && minute == other_time.minute
  end

  def to_s
    format('%02d:%02d', hour, minute);
  end

  private

  def compute_minutes_since_midnight
    total_minutes = 60 * hour + minute
    total_minutes % ONE_DAY
  end

  def compute_time_from(minutes_since_midnight)
    hours, minutes = minutes_since_midnight.divmod(60)
    hours %= 24
    new(hours, minutes)
  end
end

=end