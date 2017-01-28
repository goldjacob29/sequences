class SequenceController <ApplicationController

  def all_guesses

    @first_number = params["first_number"].to_i
    @second_number = params["second_number"].to_i
    @third_number = params["third_number"].to_i
    @res = ""
    if @first_number < @second_number && @second_number < @third_number
      @res = "Yes!"
    else
      @res = "No."
    end
    render("sequence/all_guesses.html.erb")
  end

  def show_answer
    @rule = params["rule"]
    render("sequence/show_answer.html")
  end
end
