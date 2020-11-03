class Capability < ActiveRecord::Base
  actable
  belongs_to :contract
end

