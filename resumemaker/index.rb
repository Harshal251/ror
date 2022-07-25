class Resume 
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

    def file
    name = @@op.values[0]
     @@op.each{
       |key,value|
       File.open("#{name}.txt" ,"a+") do |file|
        file.write("#{key} = #{value} \n")
        end
     }
   end
end

obj=Resume.new
obj.file

