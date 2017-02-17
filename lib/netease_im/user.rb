# encoding: utf-8
module NeteaseIM
  class User
    
    def self.create(params)
      Utils.check_required_params(params, %w(accid))
      Request.send_sync('user/create.action', params)
    end
    
    def self.update(params)
      Utils.check_required_params(params, %w(accid))
      Request.send_sync('user/update.action', params)
    end
    
    def refresh_token(params)
      Utils.check_required_params(params, %w(accid))
      Request.send_sync('user/refreshToken.action', params)
    end
    
    def block(params)
      Utils.check_required_params(params, %w(accid))
      Request.send_sync('user/block.action', params)
    end
    
    def unblock(params)
      Utils.check_required_params(params, %w(accid))
      Request.send_sync('user/unblock.action', params)
    end
    
    def update_uinfo(params)
      Utils.check_required_params(params, %w(accid))
      Request.send_sync('user/updateUinfo.action', params)
    end
    
    def get_uinfos(params)
      Utils.check_required_params(params, %w(accids))
      Request.send_sync('user/getUinfos.action', params)
    end
    
    def set_donnop(params)
      Utils.check_required_params(params, %w(accid))
      Request.send_sync('user/setDonnop.action', params)
    end
    
  end
end