require "rspec"

RSpec::Matchers.define :look_like do |expected|
  match do |actual|
    same_type = expected.class == actual.class
  end

end


RSpec.describe RSpec::Matchers do

  describe "Should create matcher" do
    it "should define matcher" do
      expect([]).to look_like([])
    end
  end
end
