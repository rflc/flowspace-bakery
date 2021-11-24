App.oven = App.cable.subscriptions.create "OvenChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
   $('.cookie_info').html(data.cookie_update)
   # Called when there's incoming data on the websocket for this channel
