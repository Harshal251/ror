module Resume
    @@op=Hash.new 
   def initialize
    arr = ["Your Name:","Your DOB:","Your Email:", "Your Adress:","Your Skills:","Languages Known:","Marital Status:"]
    for i in arr
        puts "Enter #{i}"
        input=gets.chomp 
        @@op[i]=input
        
    end
    puts @@op
   end 
end

   
end