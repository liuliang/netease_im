require 'rest-client'
require 'digest/sha1'
require 'securerandom'
require "netease_im/version"
require 'netease_im/utils'
require 'netease_im/request'
require 'netease_im/user'
require 'netease_im/chat_room'
require 'netease_im/msg'
require 'netease_im/history'

module NeteaseIM
  class << self
    attr_accessor :app_key, :app_secret, :gateway
  end
end
