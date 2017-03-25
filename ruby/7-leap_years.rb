# SELECT: returns an array containing all elements for enum for which the given block returns a TRUE value.
def leap_year_bence(a, b)
  array = (a..b).select do |year|
    if year % 400 == 0
      year
    elsif year % 100 != 0 && year % 4 == 0
      year
    end
  end
  array
end

def leap_year_dave(a, b)
  leap = []
  (a..b).each { |year|
    if year % 400 == 0
      leap << year
    elsif year % 4 == 0
      leap << year unless year % 100 == 0
    end
  }
  leap
end

p leap_year_dave(2095, 2105)
p leap_year_bence(2095, 2105)
