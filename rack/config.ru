class Backdoor
  def initialize(app, who='no one')
      @app = app
      @who = who
  end
  
  def call(env) #entrance
      status, headers, body = @app.call(env)
      body << "<br />Powered by #{ @who }!"
      # Add content to the body
      [status, headers, body]
  end
end

use Backdoor, "Indigo" #mount the app
use Backdoor, "Red"

run Proc.new {
  ['200',{'Content'=>'text/html'},['Hello, my name is Kathy']]
}
# class Backdoor
#   def initialize(app, who = "no one")
#     @app = app
#     @who = who
#   end

#   def call(env)
#     status, headers, body = @app.call(env)
#     body << "<br />Powered by #{@who}!"

#     [status, headers, body]
#   end
# end

# use Backdoor, "5xRuby"

# run Proc.new {
#   [200, { "Content-Type" => "text/html" }, ["Hello, Rack"]]
# }
