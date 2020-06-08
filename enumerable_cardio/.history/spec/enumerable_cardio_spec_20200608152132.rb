require_relative '../enumerable_cardio.rb'
require_relative '../data.rb'
require 'rspec'

context do "Enumerable Cardio!"
  describe "#longest_quote" do
    it "gets the longest quote on the list" do
      correct_answer = {:text=> "“The critical ingredient is getting off your butt and doing something. It’s as simple as that. A lot of people have ideas, but there are few who decide to do something about them now. Not tomorrow. Not next week. But today. The true entrepreneur is a doer, not a dreamer.”",
                        :from=>"Nolan Bushnell, entrepreneur."}
      expect(longest_quote(QUOTES)).to eq(correct_answer)
    end
  end

  describe "#count_fail_quotes" do
    it "fetches the total number of quotes containing the string 'fail'" do
      correct_answer = 16
      expect(count_fail_quotes(QUOTES)).to eq(correct_answer)
    end
  end

  describe "#count_fail_quotes" do
    it "fetches the total number of quotes containing the string 'fail'" do
      correct_answer = 16
      expect(count_fail_quotes(QUOTES)).to eq(correct_answer)
    end
  end

  describe "#find_a_quote" do
    it "gets the right quote for Albert Einstein"
      correct_answer = {:text=>"Imagination is more important than knowledge.", :from=>"Albert Einstein"}
      expect(find_a_quote(QUOTES, "Albert Einstein")).to eq(correct_answer)

      correct_answer_two = {:text=>"“Hire character. Train skill.", :from=>"Peter Schultz"}
      expect(find_a_quote(QUOTES, "Albert Einstein")).to eq(correct_answer_two)
  end


  describe "#number_of_quotes_grouped_by_author" do
    it "gets the right group when queried for authors with more than 3 quotes" do
      correct_answer = [{"Aristotle" => 4, "Napoleon Hill" => 6}]
      expect(number_of_quotes_grouped_by_author(QUOTES, 3)).to eq correct_answer
    end
  end
end
