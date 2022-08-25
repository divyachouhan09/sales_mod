require_relative "init.rb"
include Init
require_relative "tax_cal_of_obj.rb"
include Tax
require_relative "price_cal"
include Price
require_relative "making_obj.rb"
include Obj
require_relative "output.rb"
include Output
class Bill
    attr_accessor :no_of_items, :price, :item, :tax, :total_tax, :total_price
    @@total_price=0
    @@total_tax=0
    def initialize(a)
        @no_of_items=Init.no_of_items(a)
        @price=Init.price(a)
        @item=Init.item(a)
        @tax=0
    end
    
    def tax_cal
        @tax=Tax.tax_cal(@no_of_items,@price,@item)
    end
    
    def price_cal
        @price=Price.price_cal(@price,@no_of_items,@tax)
    end
    
    def final_cal
        @@total_price += @price
        @@total_tax += @tax
    end
    
    def outp
        puts "#{@no_of_items} #{@item}: #{@price}"
    end
    
    def self.final_outp
        @@total_tax=@@total_tax.round(2)
        puts "sales tax: #{@@total_tax}"
         @@total_price=@@total_price.round(2)
        puts "Total: #{@@total_price}"
    end
    
end   

n=gets.chomp.to_i
arr=[]

n.times do |i|
    a=gets.chomp
    arr=Obj.make(a,arr,i)
end

Output.outp(arr)

Bill.final_outp

