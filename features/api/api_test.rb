require 'uri'
require 'net/http'
require 'json'

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
        JSON.parse(response.read_body)
    end

    def create_list(name,id_board,api_key,token)
        url = URI(@@url + 'lists/?name=' + name + '&idBoard=' + id_board + '&key=' + api_key + '&token=' + token)
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
        JSON.parse(response.read_body)
    end
    
    def create_card(name,id_list,api_key,token)
        url = URI(@@url + 'cards?name=' + name + '&idList=' + id_list + '&keepFromSource=all&key=' + api_key + '&token=' + token)
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
        JSON.parse(response.read_body)
    end

    def get_card(id_card,api_key,token)
        url = URI(@@url + 'cards/' + id_card +'?key=' + api_key + '&token=' + token)
        http = Net::HTTP.new(url.host, url.port)
        request = Net::HTTP::Get.new(url)
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
        JSON.parse(response.read_body)
    end

end