def fizzbuzz(num)
  if num % 3 == 0
    puts "Fizz"
  elsif num % 5 == 0
    puts "Buzz"
  elsif num % 3 == 0 and num % 5 == 0
    puts "FizzBuzz"
  else
    puts num
end

def fizzbuzz2(num)
  case
  when num % 3  == 0 then "Fizz"
  when num % 5  == 0 then "Buzz"
  when num % 15 == 0 then "FizzBuzz"
  else num
  end
end

def getfizzbuzz(num)
  csv_text = File.read('...')
  csv = CSV.foreach(csv_text, :headers => true, :header_converters => :symbol, :converters => :all) do |row|
    fbs[row.fields[0]] = Hash[row.headers[1..-1].zip(row.fields[1..-1])] # this is like "#{row[:fb]},#{row[:div]},#{row[:msg]}"
    fbs.each do |fb, vals|
      vals.each do |k,v| # k is div, v is msg
        if num % k == 0
          str << v.to_s
        else
          str << num.to_s
        end
      end
      puts str
    end
  end
end
