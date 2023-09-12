class Fruits   
    file = File.open("data.txt", "r")
    file_data = file.readlines.map(&:chomp)
    two_d_array ,subarray,temp, max_array = [], [], [], []
    file_data.each do |line|
      line = line.strip 
        if line.empty?
        subarray = []
      else
        subarray << line.to_i
      end
      two_d_array.push(subarray) unless subarray.empty?
    end
    two_d_array.each do |element|
        sum =0
        element.each do |inner_element|
            sum = sum + inner_element
        end
        temp << sum
    end
    puts "max calories #{temp.max()}"
    
    temp.uniq!
    max =0
    max_array = temp.max(3)
    max_array.each do |m|
      max = max + m
    end
    puts "sum of max 3 calories #{max}"
end