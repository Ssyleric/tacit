class Bridge::Items::Refresh
  def self.call(item_id, access_token)
    url = "https://sync.bankin.com/v2/items/#{item_id}/refresh?client_id=#{ENV["bridge_client_id"]}&client_secret=#{ENV["bridge_client_secret"]}"
    puts url
    header = {
      "Bankin-Version": "2018-06-15",
      "Authorization": "Bearer #{access_token}"
    }
    RestClient.proxy = ENV["FIXIE_URL"] if Rails.env.production?
    response = RestClient.post(url, {}, header)
    # JSON.parse(response.body)
  end
end
