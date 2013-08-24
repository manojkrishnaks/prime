
def rpn_convertor(expression)
  new_exp= expression.split(//)
  operator=Array.new
  rpnexp=String.new
  new_exp.each{ |a|
    case a
      when "(","+","-","*","/","^"
        operator.push(a)
      when ")"
        i=operator.length
        begin
          rpnexp<< operator.pop
          i-=1
        end while operator[i]=="(" or i == 0
       operator.pop
      else
        rpnexp<< a
    end  
  }
puts "#{rpnexp}"
end






repeat_count=gets.chomp.to_i
i=0
inputs=Array.new(repeat_count)
until i>=repeat_count
  inputs.push(gets.chomp)
  i+=1
end
inputs.each{ |a| 
  rpn_convertor(a.to_s)
  puts
}


