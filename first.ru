require "rack"
#Instances of Proc automatically have a #call method that runs the block that they are initialized with.

my_server = Proc.new do
    [200, {"Content-Type" => "text/html"}, 
        ["<em> Hello</em>",
        "<em> What else can I do here?</em>",
        "<em> So many syntax to remember!!!!!!!"]]
end 

run my_server
