class Order < ActiveRecord::Base
  has_many :contracts
end

