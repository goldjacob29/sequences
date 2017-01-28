class SequenceController <ApplicationController

  def all_guesses
    render("sequence/all_guesses.html.erb")
  end

  def show_answer
    @rule = params["rule"]
    render("sequence/show_answer.html")
  end
end
