require "rack"
class MyServer
    def call(env)
        puts env #to see the request header details 
        [200, {"Content-Type"=>"text/html"}, pretty_response]
         
    end

    def pretty_response
        (Time.now.to_i % 2).zero? ? ["<em> Hello</em>"] : ["<strong> Hello </strong>"]
    end

=begin
    require "rack"
    #Instances of Proc automatically have a #call method that runs the block that they are initialized with.
    
    my_server = Proc.new do
        [200, {"Content-Type" => "text/html"}, 
            (Time.now.to_i % 2).zero? ? ["<em> Hello</em>"] : ["<strong> Hello </strong>"]]
    end 
    
    run my_server
=end 
end
run MyServer.new  #needs to be an instance! NOT the whole class!
