class Adult

def initialize
  @sober = 0
end

def sober?
  if @sober == 0
    true
  elsif @sober == 1
    true
  elsif @sober == 2
    true
  elsif @sober == 3
    false
  else
    false
  end
end

def consume_an_alcoholic_beverage
  @sober += 1
end

end
