# Given an array bitcoinPricesYesterday indexed by the number of minutes into the day
# (starting with midnight == 0) and the values are the price of Bitcoin at that time. For example,
# one Bitcoin cost $9000 at 1am, so bitcoinPricesYesterday[60] = 9000. Write an efficient
# algorithm for computing the best profit I could have made from 1 purchase and 1 sale of a Bitcoin
# yesterday


# arr = [1, 4, 5, 6, 3, 4]
# arr = [1, 1, 1]
# arr = [1, 2, 3]
# arr = [10, 5, 3]
arr = [1, 1, 1, 1, 10]


def max_profit(arr)

  max = 0 
  buy = arr[0]

  i = 0 
  while i < arr.length

    # if the price incrases, calculate the profit 
    if arr[i] > buy
      profit = arr[i] - buy
      # save as max profit if it is better
      if profit > max 
        max = profit
      end
    end

    # if the price gets cheaper, save it as the new buy price
    if arr[i] < buy 
      buy = arr[i]
    end

    i += 1
  end

  return max 

end

puts max_profit(arr)