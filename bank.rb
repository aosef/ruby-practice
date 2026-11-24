class Account 
    attr_reader :owner, :balance, :history

    def initialize(owner, balance)
        @owner = owner
        @balance = balance
        @history = []
    end

    def deposit(amount)
        @balance += amount
        record("deposit: #{amount}")
    end

    def withdraw(amount)
        if amount > @balance
         raise ArgumentError, "not enough balance"
        else
            @balance -= amount
            record("withdraw: #{amount}")
            @balance
        end
    end

    def statement 
        puts "account statement: #{@owner}"
        @history.each do |item|
            puts "- #{item}"
        end
        puts "balance now: #{@balance}"
    end

    private
    
    def record(text)
        @history.push(text)
    end
end

class SavingsAccount < Account
    def initialize(owner, balance, rate)
        super(owner, balance)
        @rate = rate
    end

    def add_interest
        @balance += @balance * @rate
    end
end

class CheckingAccount < Account
    def initialize(owner, balance, overdraft)
        super(owner, balance)
        @overdraft = overdraft
    end

    def withdraw(amount)
        if amount > @balance + @overdraft
            "skip the limit"
        else
            @balance -= amount
            record("withdraw: #{amount}")
            @balance
        end
    end
end

chk = CheckingAccount.new("omar", 100, 50)
 chk.withdraw(120)
chk.statement
#puts chk.withdraw(100)




acc = Account.new("youssef", 1000)

begin
    acc.withdraw(5000)
rescue ArgumentError => e
    puts "Error: #{e.message}"
end

puts "balance: #{acc.balance} " 


acc.deposit(500)
acc.withdraw(200)
acc.statement
acc_2 = Account.new("sara", 200)
acc_2.deposit(100)
acc_2.withdraw(200)
acc_2.statement

#puts acc.withdraw(200)
#puts acc.withdraw(5000)
#puts acc.balance
#acc.record("fake")

sav = SavingsAccount.new("ali", 1000, 0.05)
sav.deposit(500)
sav.add_interest
#puts sav.balance
#puts sav.withdraw(75)
#puts sav.owner