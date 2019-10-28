class Transfer
  attr_reader :sender, :receiver, :amount, :status

<<<<<<< HEAD
  def initialize(sender, receiver, amount)
=======
  def initialize(receiver, sender, amount)
>>>>>>> 06a4616eb222ab8720c5b32f141aff6b103af54b
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if @sender.balance < @amount
<<<<<<< HEAD
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
=======
      "Transaction rejected. Plase check your account balance."
>>>>>>> 06a4616eb222ab8720c5b32f141aff6b103af54b
    elsif valid? && @status == "pending"
      @sender.deposit(-@amount)
      @receiver.deposit(@amount)
      @status = "complete"
    else
      return nil
    end
  end

<<<<<<< HEAD
  def reverse_transfer
    if @status == "complete"
      @sender.deposit(@amount)
      @receiver.deposit(-@amount)
      @status = "reversed"
    else "Not completed"
    end
  end




=======
>>>>>>> 06a4616eb222ab8720c5b32f141aff6b103af54b


end
