require 'csv'

class Parser

def initialize(questions)
  @questions = questions	
  parse
end

 csv_file = File.join(File.dirname(__FILE__), "..", "contact_list", "questions.csv")

  CSV::Converters[:blank_to_nil] = lambda do |field|
    field && field.empty? ? nil : field
  end

  def parse_csv(csv_file)
    questions = File.read(filename)
    csv = CSV.new(contacts_data, headers: true, header_converters: :symbol, converters: [:all, :blank_to_nil])
    array_of_hashes = csv.to_a.map {|row| row.to_hash }


    array_of_hashes.map do |hash|
      question = Question.new(*hash.values)
      @question.add(question)
    end
  end
  parse_csv(csv_file)
  puts  @question
end

