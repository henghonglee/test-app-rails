class Contract < ActiveRecord::Base
  has_one :capability
  has_one :reconciliation
  has_many :contracts
end

