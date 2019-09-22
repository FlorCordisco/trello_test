require 'uri'
require 'net/http'
require 'json'
require 'pry'

class ApiTest
    
    @@url = 'https://api.trello.com/1/'

    def create_board(name,api_key,token)
        url = URI(@@url + 'boards/?name=' + name + '&key=' + api_key + '&token=' + token)
        http = Net::HTTP.new(url.host, url.port)
        request = Net::HTTP::Post.new(url)
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        http.use_ssl = true
        request["Accept"] = '*/*'
        request["Cache-Control"] = 'no-cache'
        request["Host"] = 'api.trello.com'
        request["cookie"] = 'dsc=e55f116952c598b822e2212cb2842da48a05f97145642aa1237e42f497ce97d4'
        request["content-length"] = ''
        request["Connection"] = 'keep-alive'
        request["cache-control"] = 'no-cache'

        response = http.request(request)
        json = JSON.parse(response.read_body)
    end

end