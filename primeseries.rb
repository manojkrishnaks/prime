require 'prime'
def prime_generator(low_limit,up_limit)
  until low_limit> up_limit
    if Prime.prime?(low_limit)
      puts low_limit
    end
    low_limit+=1
  end
end



repeat_count=gets.chomp.to_i
i=0
inputs=Array.new(repeat_count)

until i>=repeat_count
  inputs.push(gets.chomp)
  i+=1
end

inputs.each{ |a| 
  limits=a.to_s.split
  prime_generator(limits[0].to_i,limits[1].to_i)
  puts
}

