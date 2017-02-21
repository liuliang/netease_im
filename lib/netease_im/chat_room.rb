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
    
    def self.update(params)
      Utils.check_required_params(params, %w(roomid))
      Request.send_sync('chatroom/update.action', params)
    end
    
    def self.toggle_close_stat(params)
      Utils.check_required_params(params, %w(roomid operator valid))
      Request.send_sync('chatroom/toggleCloseStat.action', params)
    end
    
    def self.set_member_role(params)
      Utils.check_required_params(params, %w(roomid operator target opt optvalue))
      Request.send_sync('chatroom/setMemberRole.action', params)
    end
    
    def self.request_addr(params)
      Utils.check_required_params(params, %w(roomid accid))
      Request.send_sync('chatroom/requestAddr.action', params)
    end
    
    def self.send_msg(params)
      Utils.check_required_params(params, %w(roomid msgId fromAccid msgType))
      Request.send_sync('chatroom/sendMsg.action', params)
    end
    
    def self.add_robot(params)
      Utils.check_required_params(params, %w(roomid accids))
      Request.send_sync('chatroom/addRobot.action', params)
    end
    
    def self.remove_robot(params)
      Utils.check_required_params(params, %w(roomid accids))
      Request.send_sync('chatroom/removeRobot.action', params)
    end
    
    def self.temporary_mute(params)
      Utils.check_required_params(params, %w(roomid operator target muteDuration))
      Request.send_sync('chatroom/temporaryMute.action', params)
    end
    
    def self.queue_offer(params)
      Utils.check_required_params(params, %w(roomid key value))
      Request.send_sync('chatroom/queueOffer.action', params)
    end
    
    def self.queue_poll(params)
      Utils.check_required_params(params, %w(roomid))
      Request.send_sync('chatroom/queueOffer.action', params)
    end
    
    def self.queue_list(params)
      Utils.check_required_params(params, %w(roomid))
      Request.send_sync('chatroom/queueList.action', params)
    end
    
    def self.queue_drop(params)
      Utils.check_required_params(params, %w(roomid))
      Request.send_sync('chatroom/queueDrop.action', params)
    end
    
    def self.queue_init(params)
      Utils.check_required_params(params, %w(roomid sizeLimit))
      Request.send_sync('chatroom/queueInit.action', params)
    end
    
    def self.mute_room(params)
      Utils.check_required_params(params, %w(roomid operator mute))
      Request.send_sync('chatroom/muteRoom.action', params)
    end
    
    def self.topn(params)
      Utils.check_required_params(params, %w(topn))
      Request.send_sync('chatroom/topn.action', params)
    end
    
    def self.members_by_page(params)
      Utils.check_required_params(params, %w(roomid type endtime limit))
      Request.send_sync('chatroom/membersByPage.action', params)
    end
    
    def self.query_members(params)
      Utils.check_required_params(params, %w(roomid accids))
      Request.send_sync('chatroom/queryMembers.action', params)
    end
    
  end
end