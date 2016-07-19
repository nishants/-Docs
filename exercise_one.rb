page = {
    :name         => "Dam",
    :full_name    => "Dam Sam",
    :age         => 32,
    :address => {:city => "Delhi", :from => {:day => 3, :month => 2, :year => 2014}},
    :past_addresses => [
        {:city => "Mumbai",    :from => {:day => 13, :month => 7, :year => 2012},   :to => {:day => 3, :month  => 2, :year => 2014}},
        {:city => "Chennai",   :from => {:day => 17, :month => 3, :year => 2010},   :to => {:day => 13, :month => 7, :year => 2012}},
        {:city => "Guwahati",  :from => {:day => 4,  :month => 2, :year => 2006},   :to => {:day => 17, :month => 3, :year => 2010}}
    ]
}

# Return last name
def last_name(page)
  return ""
end

# Return year of birth as DD/MM/YYYY
def year_of_birth(page)
  return 1965
end

# Return name of current city
def current_city(page)
  return "Bangalore"
end


# Return name of past cities
def past_cities(page)
  return ["Mumbai", ["New York"]]
end

# Return dates of address change as MM/YY, from oldest to newest
def address_change_dates(page)
  return []
end






















class Hello
  def all
    each(){|val| puts(" putting : #{val}")};
  end

  def each
    for i in 0..5 do
      yield(i)
    end
  end
end



Hello.new.all()


class Mapper
  def self.parse(collections)
    Class.new{
      def initialize(collections)
        collections.each { |name, value|
          if value.class == Hash
            value = Mapper.parse(value);
          end

          instance_variable_set("@#{name}", value)
          self.class.send(:attr_accessor, name)
        }
      end
    }.new(collections)
  end
end
require 'json'
json = JSON.parse(File.read("/Users/dawn/Documents/projects/schemer/samples/profiles/profile-ace/home.json"))
mapper = Mapper.parse(json)










# *******************************************************

def verify (value, expected, testName)
  error       = (value != expected)
  title       = (error ?  "Failed : " : "Okay   : ") + testName
  line_break  = ("\n"+ ("-" * 20) +"\n")
  result      = title + line_break
  error_message  = (error ? "Expected : #{expected} \nActual   : #{value}" : "")
  $stderr.puts  error ? (result  + error_message +"\n\n") : ""
  puts    error ? "" : result +"\n\n"
end

verify(last_name(page)      , "Sam"     , "last_name(page)")
verify(year_of_birth(page)  , 1984      , "year_of_birth(page)")
verify(current_city(page)   , "Delhi"   , "current_city(page)")

verify(past_cities(page)    , ["Mumbai", "Chennai", "Guwahati"]   , "past_cities(page)")
verify(address_change_dates(page)    , ["02/2006", "03/2010", "07/2012"]   , "address_change_dates(page)")
