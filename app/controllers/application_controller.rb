class ApplicationController < ActionController::Base
  def blank_square_form
    render({ :template => "calc_templates/square_form.html.erb" })
  end

  def calc_square
    @new = params.fetch("user_input")
    @square = @new.to_f ** 2
    render({ :template => "calc_templates/square_result.html.erb" })
  end
end
