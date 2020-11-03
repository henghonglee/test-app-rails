class NicepayVirtualAccountAcceptContract < Contract
  def initialize(capability)
    self.capability = capability
  end
end

# creation
# NicepayVirtualAccountAcceptContract.create!(capability: NicepayVirtualAccount.create!(amount: amount))