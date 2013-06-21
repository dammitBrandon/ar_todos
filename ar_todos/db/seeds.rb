require_relative "../config/application"


3.times do
  temp_list = List.create!(:name => Faker::Name.name)
  10.times do
    Task.create!(:description => Faker::Company.bs, completed: 0, list_id: temp_list.id)
  end
end

