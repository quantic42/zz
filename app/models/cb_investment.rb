class CbInvestment < ApplicationRecord
  belongs_to :funding_round
  belongs_to :funded_object
  belongs_to :investor_object
end
