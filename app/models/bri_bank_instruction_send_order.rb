class BriBankInstructionSendContract < Contract

  def initialize(capability)
    self.capability = capability
  end
  # do aasm here
  # respond to bank instruction and create charges
  # ...

end

# creation
# BriBankInstructionSendContract.create!(capability: BriBankInstruction.create!(amount: amount))