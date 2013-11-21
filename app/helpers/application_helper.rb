module ApplicationHelper
	#include PluralityHelper

  def plurality(text, number)
   	text_case_holder = text
    if number.to_f == 0 || number.to_f > 1
      text = text.pluralize
    else
      text = text.singularize
    end
    text = text.upcase if text_case_holder == text_case_holder.upcase
    text #the last line is the output of the function, so it can't be the evaluation above.
   end
end
