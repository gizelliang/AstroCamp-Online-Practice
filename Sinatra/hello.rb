require 'sinatra'

enable :sessions

get '/' do
    @name = session [:kathy]
    erb :index, layout: :my_layout
end

get '/form' do
    erb :form
end

post '/form' do
    h = params [:height].to_f / 100
    w = params [:weight].to_f
    @BMI = w / (h * h)
    erb :result
end

get '/login' do
    erb:login 
end

post '/login' do
    username = params [:username]
    password = params [:password]
    if username == 'gizelliang@gmail.com' and password == 'kathy0223'
       username = session [:kathy]
    end
    erb :login
    redirect '/'
end

