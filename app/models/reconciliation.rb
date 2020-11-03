# Reconciliation is a linker table similar to how has_many_through works,
# its representing the how a certain contract is reconcilied and with what charge
# it also links to the cost charge of the reconciliation itself.
#
# A single charge (and cost charge) can be used to reconcile one or multiple contracts
class Reconciliation < ActiveRecord::Base
  belongs_to :contract
  belongs_to :charge # charge_id on reconciliation table
  belongs_to :cost_charge, class_name: "CostCharge", foreign_key: :cost_charge_id # cost_charge_id on reconciliation table
end

