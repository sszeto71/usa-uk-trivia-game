require_relative '../app/models/question'
class QuestionsImporter
  def self.import
    Question.create(
      question: "Which country has the tallest average male (20-40 year olds) - UK or US?",
      answer: "UK"
    )

    Question.create(
      question: "Which city has the largest population - London (UK) or Washington (US)?",
      answer: "UK"
    )

    Question.create(
      question: "Which team generates the biggest revenues - The NFL NYGiants (US) or Manchester United(football) (UK)?",
      answer: "UK"
    )

    Question.create(
      question: "Which soap opera has been running the longest - Days of our Lives (US) or Coronation Street (UK)",
      answer: "UK"
    )
    Question.create(
      question: "Which song stayed at number 1 the longest - 'Hey Jude' by the Beatles (UK) vs 'Heartbreak Hotel' by Elvis Presley (US)",
      answer:"UK"
    )

    Question.create(
      question: "Which place has the most rainfall - Cleveland (US) or Cornwall (UK)?",
      answer: "UK"
    )

    Question.create(
      question: "Which country speaks more languages - US or UK?",
      answer: "US"
    )

    Question.create(
      question: "Which country drinks the most coffee per capita?  US or UK?",
      answer: "US"
    )

    Question.create(
      question: "Which country has the biggest average salary - US or UK?",
      answer: "US"
    )

    Question.create(
      question: "Who gives birth to the heaviest girls - US or UK?",
      answer: "US"
    )

    Question.create(
      question: "Who is the richest - Oprah Winfrey (US) or JK Rowling (UK)?",
      answer: "US"
    )
  end
end


# module QuestionsImporter
#   def self.import(filename=File.dirname(__FILE__) + "/data/questions.csv")
#     field_names = nil
#     Question.transaction do
#       File.open(filename).each do |line|
#           puts "DATA"
#           p line
#         data = line.chomp.split(',')
#         puts "MORE DATA"
#          p data
#         if field_names.nil?
#           field_names = data
#         else
#           attribute_hash = Hash[field_names.zip(data)]
#           question = Question.create!(attribute_hash)
#           p "else!"
#         end
#       end
#     end
#   end
# end
