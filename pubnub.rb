require 'pubnub'

pubnub = Pubnub.new(
  :publish_key   => 'YOUR KEY', # publish_key only required if publishing.
  :subscribe_key => 'YOUR KEY', # required
  :secret_key    => nil,    # optional, if used, message signing is enabled
  :cipher_key    => nil,    # optional, if used, encryption is enabled
  :ssl           => nil     # true or default is false
)

@my_callback = lambda { |message| puts(message) }

pubnub.publish(
  :channel  => :hello_world,
  :message  => "hi",
  :callback => @my_callback
)
