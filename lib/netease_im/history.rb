# encoding: utf-8
module NeteaseIM
  class History
    
    # 单聊云端历史消息查询
    def self.query_session_msg(params)
      Utils.check_required_params(params, %w(from to begintime endtime limit))
      Request.send_sync('history/querySessionMsg.action', params)
    end
    
    # 群聊云端历史消息查询
    def self.query_team_msg(params)
      Utils.check_required_params(params, %w(tid accid begintime endtime limit))
      Request.send_sync('history/queryTeamMsg.action', params)
    end
    
    # 聊天室云端历史消息查询
    def self.query_chatroom_msg(params)
      Utils.check_required_params(params, %w(roomid accid timetag limit))
      Request.send_sync('history/queryChatroomMsg.action', params)
    end
  
    # 删除聊天室云端历史消息
    def self.delete_history_message(params)
      Utils.check_required_params(params, %w(roomid fromAcc msgTimetag))
      Request.send_sync('history/deleteHistoryMessage.action', params)
    end
    
    # 用户登录登出事件记录查询
    def self.query_user_events(params)
      Utils.check_required_params(params, %w(accid begintime endtime limit))
      Request.send_sync('history/queryUserEvents.action', params)
    end
  end
end