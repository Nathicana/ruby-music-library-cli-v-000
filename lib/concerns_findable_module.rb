module Concerns::Findable

def self.find_by_name
  self.all.find {|artist| artist.name == name}
end

def self.find_or_create_by_name 

end

end
