class ApplicationController < ActionController::API
    #--API-CALL-------------------------------------------------------------    
    def api_call(url)
        uri = URI(url)
        response = Net::HTTP.get_response(uri)
        json_response = JSON.parse(response.read_body)    
    end
end
