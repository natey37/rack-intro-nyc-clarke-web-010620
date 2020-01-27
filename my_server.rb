class MyServer
    def call(env)
      return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
    end
   
    def pretty_response
      (Time.now.to_i % 2).zero? ?  ["<em>Hello World</em>" + "Hello my name is Nathan"] : ["<strong>Hello</strong>" + "Hello my name is Nathan"]
    end
  end