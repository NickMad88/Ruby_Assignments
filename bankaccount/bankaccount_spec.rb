require_relative 'bank_account'

RSpec.describe BankAccount do
    before(:each) do
        @acc = BankAccount.new
    end

    it "has a getter method for retrieving the checking account balance" do
        expect(@acc.checking).to eq(0)
    end

    it "has a getter method that retrrieces the total account balance" do
        expect(@acc.total).to eq("Checking Balance: 0\nSaving Balance: 0\nTotal Balance: 0")
    end
    
    it "has a function that allows users to withdraw cash" do
        expect{ @acc.withdraw("checking", 100) }.to raise_error("Insufficient Funds, you have 0 in this account")

    end

    it "raises an error if user tries to withdraw more money than the have in savings" do
        expect{ @acc.withdraw("saving", 100) }.to raise_error("Insufficient Funds, you have 0 in this account")
    end

    it "raises an error when the user attempts to retrieve the total number of bank accounts" do
        expect{ @acc.number_of_accounts }.to raise_error(NoMethodError)
    end

    it "raises an error when the user attempts to set the interest rate" do
        expect{ @acc.interest_rate }.to raise_error(NoMethodError)
    end
end