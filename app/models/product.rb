class Product < ApplicationRecord

  def is_discounted?
    if price <= 10
      return true
    else
      return false
    end
  end

  def tax
    tax_rate = 0.09
    tax_amount = price * tax_rate
    return tax_amount
  end

  def total
    total_amount = price + tax
    return total_amount
  end

  def decimal
    p price.to_s
  end
end

  
