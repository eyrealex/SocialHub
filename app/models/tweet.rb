require 'twitter'

module Tweet
  module_function

  def api_call
    client = Twitter::Streaming::Client.new do |config|
      config.consumer_key        = "gCWMlpCcw7UgHgIjX98MegbCt"
      config.consumer_secret     = "E19oYE1ngszTmBa9Zgf6j4fUUmIh91ky3LKkgXrXlfHVaOY2cp"
      config.access_token        = "1260261584091385867-aqw9xJU0OTaVwd1xpcbpOlY2ZlhGo4"
      config.access_token_secret = "2FfVeVpik74KNgI8oXdDUNbxKMDT4M6H2eIpDiEbk9Xje"sss
    end
    client.search("#SpaceX -rt", lang: "en").first.text

  end

end
