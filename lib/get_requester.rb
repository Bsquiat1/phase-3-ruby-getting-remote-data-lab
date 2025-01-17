require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"


    def get_reponse_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end
end

programs = GetRequester.new.get_reponse_body
puts programs
