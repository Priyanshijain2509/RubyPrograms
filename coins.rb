class TotalCoins
  def minimumCoins(arr, amount, sum, ans)
    if amount == 0
      return 0
    else
      unless sum > amount
        temp = amount - sum
        if temp >= arr.max()
          temp2 = temp / arr.max()
          while temp2 > 0
            sum = arr.max() + sum
            ans.push(arr.max())
            temp2 = temp2 - 1
          end
        end
      end
   
      return "number of coins is: #{ans.length}\n" if amount == sum
      arr.pop
      return -1 if (arr.length == 0)
    
      minimumCoins(arr, amount, sum, ans)
    end
  end
end

print "Enter a list of numbers separated by spaces: "
arr = gets.chomp
arr = arr.split.map(&:to_i)
arr.sort!
print "Enter amount: "
amount = gets.chomp.to_i
sum = 0
ans = []
coin_solver = TotalCoins.new
puts coin_solver.minimumCoins(arr, amount, sum, ans)
