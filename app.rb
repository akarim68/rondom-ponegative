require 'sinatra'

# this allows the server to be accessed more widely
# ある1つの防御を無効にするには、protectionにハッシュでオプションを指定します。
#set :protection, :except => :frame_options
set :environment, :production
set :bind, "0.0.0.0"

get '/' do
  # this allows requests from other servers
  response['Access-Control-Allow-Origin'] = '*'
  response['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept'
  erb :index
end
