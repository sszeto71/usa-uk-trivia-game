require_relative '../app/models/question'

module QuestionsImporter
  def self.import(filename=File.dirname(__FILE__) + "/../db/data/questions.csv")
    field_names = nil
    Question.transaction do
      File.open(filename).each do |line|
        data = line.chomp.split(',')
        if field_names.nil?
          field_names = data
        else
          attribute_hash = Hash[field_names.zip(data)]
          student = Question.create!(attribute_hash)
        end
      end
    end
  end
end