module NeteaseIM
  class Request

    def self.send_sync(action, params)
      headers = {
        AppKey: NeteaseIM.app_key,
        Nonce: SecureRandom.hex,
        CurTime: Time.now.to_i,
        content_type: 'Content-Type: application/x-www-form-urlencoded'
      }
      headers[:CheckSum] = Digest::SHA1.hexdigest "#{NeteaseIM.app_secret}#{headers[:Nonce]}#{headers[:CurTime]}"
      JSON.parse RestClient.post("#{NeteaseIM.gateway}/nimserver/#{action}", params, headers)
    end

  end
end