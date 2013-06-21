def list_lists
  List.all.each { |list| p "#{list.id}, #{list.name}" }
end

def add_list(name)
  List.create(name: name)
end

def delete_list(id)
  List.delete(id.to_i)
end
