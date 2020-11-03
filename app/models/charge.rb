class Charge < ActiveRecord::Base
  has_many :ledgers

  # either belongs to a contract or a reconciliation. doesnt have both.
  belongs_to :contract
  has_one :reconciliation
end

