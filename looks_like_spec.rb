require "rspec"
require "json"

RSpec::Matchers.define :look_like do |definition |
  error_value       = nil
  expected_pattern  = nil
  error_row         = nil
  error_col         = nil

  match do |table|

    table.each{|row|
      row.each_with_index{|col_value, col_index|
        if(col_value != definition[col_index])
          error_value      = col_value
          expected_pattern = definition[col_index]
          error_row = row
          error_col        = col_index

          return false
        end
      }
    }
  end

  failure_message do |actual|
    "Expected #{error_value} to match #{expected_pattern}"
  end

  description do
    "test value to match a pattern"
  end
end


RSpec.describe RSpec::Matchers do

  describe "Should create matcher" do
    it "should define matcher" do
      expect([["1,00,33"]]).to look_like(["1,0033"])
    end
  end
end
