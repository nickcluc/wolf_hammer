# Parse JSON response to ruby hash
def json
  JSON.parse(response.body)
end

def data_block
  json['data']
end
