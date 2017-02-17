# encoding: utf-8
module NeteaseIM
  class ChatRoom
    
    def self.create(params)
      Utils.check_required_params(params, %w(creator name))
      Request.send_sync('chatroom/create.action', params)
    end
    
    def self.get(params)
      Utils.check_required_params(params, %w(roomid))
      Request.send_sync('chatroom/get.action', params)
    end
    
    def update(params)
      Utils.check_required_params(params, %w(roomid))
      Request.send_sync('chatroom/update.action', params)
    end
    
    def toggle_close_stat(params)
      Utils.check_required_params(params, %w(roomid operator valid))
      Request.send_sync('chatroom/toggleCloseStat.action', params)
    end
    
    def set_member_role(params)
      Utils.check_required_params(params, %w(roomid operator target opt optvalue))
      Request.send_sync('chatroom/setMemberRole.action', params)
    end
    
    def request_addr(params)
      Utils.check_required_params(params, %w(roomid accid))
      Request.send_sync('chatroom/requestAddr.action', params)
    end
    
    def send_msg(params)
      Utils.check_required_params(params, %w(roomid msgId fromAccid msgType))
      Request.send_sync('chatroom/sendMsg.action', params)
    end
    
    def add_robot(params)
      Utils.check_required_params(params, %w(roomid accids))
      Request.send_sync('chatroom/addRobot.action', params)
    end
    
    def remove_robot(params)
      Utils.check_required_params(params, %w(roomid accids))
      Request.send_sync('chatroom/removeRobot.action', params)
    end
    
    def temporary_mute(params)
      Utils.check_required_params(params, %w(roomid operator target muteDuration))
      Request.send_sync('chatroom/temporaryMute.action', params)
    end
    
    def queue_offer(params)
      Utils.check_required_params(params, %w(roomid key value))
      Request.send_sync('chatroom/queueOffer.action', params)
    end
    
    def queue_poll(params)
      Utils.check_required_params(params, %w(roomid))
      Request.send_sync('chatroom/queueOffer.action', params)
    end
    
    def queue_list(params)
      Utils.check_required_params(params, %w(roomid))
      Request.send_sync('chatroom/queueList.action', params)
    end
    
    def queue_drop(params)
      Utils.check_required_params(params, %w(roomid))
      Request.send_sync('chatroom/queueDrop.action', params)
    end
    
    def queue_init(params)
      Utils.check_required_params(params, %w(roomid sizeLimit))
      Request.send_sync('chatroom/queueInit.action', params)
    end
    
    def mute_room(params)
      Utils.check_required_params(params, %w(roomid operator mute))
      Request.send_sync('chatroom/muteRoom.action', params)
    end
    
    def topn(params)
      Utils.check_required_params(params, %w(topn))
      Request.send_sync('chatroom/topn.action', params)
    end
    
    def members_by_page(params)
      Utils.check_required_params(params, %w(roomid type endtime limit))
      Request.send_sync('chatroom/membersByPage.action', params)
    end
    
    def query_members(params)
      Utils.check_required_params(params, %w(roomid accids))
      Request.send_sync('chatroom/queryMembers.action', params)
    end
    
  end
end