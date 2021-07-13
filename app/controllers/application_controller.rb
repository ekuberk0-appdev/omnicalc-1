class ApplicationController < ActionController::Base

def blank_square_form
render({ :template => "calculation_templates/square_form.html.erb" })
end 

def calculate_square
# params = {"elephant"=>"42"}
@num = params.fetch("elephant").to_f
@square_of_num = @num ** 2
    render({ :template => "calculation_templates/square_results.html.erb"})
end    

def calculate_random

@lower = params.fetch("user_min").to_f 
@upper = params.fetch("user_max").to_f 
@result = rand(@lower..@upper)
render({ :template => "calculation_templates/rand_results.html.erb"})

end

def random_form
    render({ :template => "calculation_templates/random_form.html.erb"})
end 

def payment_form
    render({ :template => "calculation_templates/payment_form.html.erb"})
end


def payment_results
    @num1 = params.fetch("user_apr").to_f.round(3).to_s(:percentage)
    @num2 = params.fetch("user_years").to_i
    @num3 = params.fetch("user_pv").to_f.to_s(:currency)
    #@result = .round

    render({ :template => "calculation_templates/payment_results.html.erb"})
end 

def sqroot_form
    render({ :template => "calculation_templates/sqroot_form.html.erb"})

end 

def sqroot_results
    @num = params.fetch("apple").to_f
    @result = @num ** 0.5
    render({ :template => "calculation_templates/sqroot_results.html.erb"})
end

end