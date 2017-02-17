# NeteaseIm

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/netease_im`. To experiment with that code, run `bin/console` for an interactive prompt.

NeteaseIM Server SDK in Ruby.

## API文档
- 官方文档(http://dev.netease.im/docs?doc=server)

## API接口

### User
- create  创建云信ID
- update  云信ID更新
- refresh_token  更新并获取新token
- block  封禁云信ID
- unblock  解禁云信ID
- update_uinfo  更新用户名片
- get_uinfos  获取用户名片
- set_donnop  设置桌面端在线时，移动端是否需要推送

### ChatRoom
- create  创建聊天室
- get  查询聊天室信息
- update  更新聊天室信息
- toggle_close_stat  修改聊天室开/关闭状态
- set_member_role  设置聊天室内用户角色
- request_addr  请求聊天室地址
- send_msg  发送聊天室消息
- add_robot  往聊天室内添加机器人
- remove_robot  从聊天室内删除机器人
- temporary_mute  设置临时禁言状态
- queue_offer  往聊天室有序队列中新加或更新元素 
- queue_poll  从队列中取出元素 
- queue_list  排序列出队列中所有元素 
- queue_drop  删除清理整个队列 
- queue_init  初始化队列 
- mute_room  将聊天室整体禁言 
- topn  查询聊天室统计指标TopN 
- members_by_page  分页获取成员列表
- query_members  批量获取在线成员信息

### Msg
- send_msg  发送普通消息
- send_batch_msg  批量发送点对点普通消息
- send_attach_msg  发送自定义系统通知

### 例子
```ruby

NeteaseIM.app_key = "abc"
NeteaseIM.app_secret = "456"
NeteaseIM.gateway = "https://api.netease.im"

NeteaseIM::User.create(accid: 'test', name: 'test')
NeteaseIM::ChatRoom.create(name: 'test')
NeteaseIM::Msg.send_msg(from: 'test', ope: 0, to: 't2', type: 0, body: {msg: 'hello'})

```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'netease_im'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install netease_im

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/liuliang/netease_im. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

