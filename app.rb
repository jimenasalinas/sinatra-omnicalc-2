require "sinatra"
require "sinatra/reloader"

get("/") do
  redirect("/add")
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_num = params.fetch("first_num").to_f

  @second_num = params.fetch("second_number").to_f

  @result = @first_num + @second_num
  
  @result = @first_num + @second_num
  erb(:add_result)
end

get("/subtract") do
  erb(:subtraction_form)
end

get("/wizard_subtract") do
  @first_num = params.fetch("sub_first").to_f
  @second_num = params.fetch("sub_second").to_f

  @result = @first_num - @second_num
  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard_multiply") do
  @first_num = params.fetch("mult_first").to_f
  @second_num = params.fetch("mult_second").to_f

  @result = @first_num * @second_num
  erb(:mult_result)
end

get("/divide") do
  erb(:divform)
end

get("/wizard_divide") do
  erb(:div_result)
end
