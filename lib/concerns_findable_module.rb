module Concerns::Findable

def all.find_by_name
  @all.all.find {|artist| artist.name == name}
end

def all.find_or_create_by_name
@all.find_by_name(name) ? @all.find_by_name(name) : @all.create(name)
end

end
