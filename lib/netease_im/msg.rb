# encoding: utf-8
module NeteaseIM
  class Msg
    
    def self.send_msg(params)
      Utils.check_required_params(params, %w(from ope to type body))
      Request.send_sync('msg/sendMsg.action', params)
    end
    
    def self.send_batch_msg(params)
      Utils.check_required_params(params, %w(fromAccid toAccids type body))
      Request.send_sync('msg/sendBatchMsg.action', params)
    end
    
    def self.send_attach_msg(params)
      Utils.check_required_params(params, %w(from msgtype to attach))
      Request.send_sync('msg/sendAttachMsg.action', params)
    end
    
  end
end