class Wallet

  def initialize
    @wallet = {penny: 0, nickel: 0, dime: 0, quarter: 0, dollar: 0}
  end

  def <<(coin)
    if coin == :penny
      @wallet[coin] += 1
    elsif coin == :nickel
      @wallet[coin] += 5
    elsif coin == :dime
      @wallet[coin] += 10
    elsif coin == :quarter
      @wallet[coin] += 25
    elsif coin == :dollar
      @wallet[coin] += 100
    end
  end

  def cents
    @wallet.values.sum
  end

  def take(coin1, coin2 = :none)
    @wallet.has_key?(coin1)
      if coin1 == :penny
        if @wallet[coin1] > 0
        @wallet[coin1] -= 1
        end
      elsif coin1 == :nickel
        @wallet[coin1] -= 5
      elsif coin1 == :dime
        if @wallet[coin1] > 0
          @wallet[coin1] -= 10
        end
      elsif coin1 == :quarter
        @wallet[coin1] -= 25
      elsif coin1 == :dollar
        @wallet[coin1] -= 100
      end
    @wallet.has_key?(coin2)
      if coin2 == :penny
        @wallet[coin2] -= 1
      elsif coin2 == :nickel
        @wallet[coin2] -= 5
      elsif coin2 == :dime
        @wallet[coin2] -= 10
      elsif coin2 == :quarter
        @wallet[coin2] -= 25
      elsif coin2 == :dollar
        @wallet[coin2] -= 100
      end
    end
end
