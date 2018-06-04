require 'pco_api'

api = PCO::API.new(basic_auth_token: '1159e0d6798917c56fd9708b2dfffa3dfe690e515ad5c8464e2c744bd83041bd', basic_auth_secret: '9601e08ac044017ee941044b3eb7158057fc67578355b73259185c8ab28095a6')

o = api.people.v2.people.get('where[last_name]' => 'McNeil')

o['data'].each do |p|
    puts p['attributes']['name']
end

o['data'][0]['attributes']['name'] = 'Sam Michael'


o['data'].each do |p|
    puts p['attributes']['name']
end
puts o['data'][0]['attributes']['name']

