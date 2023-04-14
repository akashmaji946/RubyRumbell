# lambda vs proc

to_pesos = lambda {|dollars| dollars * 34}
to_inr = Proc.new {|dollars| dollars * 80}

def convert(dollars, &to_xyz)
    puts "Calculating..."
    to_xyz.call(dollars)
end

p convert(100, &to_pesos)
p convert(121, &to_inr)
puts

# what is the difference between the two
# while calling lambda we must give exact number of args
# while proc can be called with any number of args

def get_total_bill_from_usd_in(amount, tax, tip)
    total_amount = amount + amount * tax + amount * tip
    vat = nil
    if total_amount > 100
        vat = 0.10
    end
    amt = yield(total_amount, vat)
    puts "The total amount is: #{amt}"
end

lambda_calc = lambda {|t_amount, vat| 
    puts "lambda called"
    vat = 0 if vat.nil?
    vat + t_amount
}
proc_calc = Proc.new { |t_amount, vat |
    puts "proc called"
    vat = 0 if vat.nil?
    vat + t_amount
}
puts
p get_total_bill_from_usd_in(100, 0.18, 0.07, &lambda_calc)
p get_total_bill_from_usd_in(100, 0.18, 0.07, &proc_calc)


# lambda return causes return to parent method

def test_method(val)

    lam = lambda {|v| return v**2}
    x = lam.call(val)
    puts "The returned value is: #{x}"

end
puts
p test_method(12)

# proc return causes return from parent method
x = 0
def test_method2(val)

    proc = Proc.new {|v| return v**2}
    x = proc.call(val)
    puts "The returned value is: #{x}"

end
puts
p x
p test_method2(12)
p x


