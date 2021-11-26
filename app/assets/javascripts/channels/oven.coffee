pathArray = window.location.pathname.split('/');
oven_id = pathArray.slice(2, 3).shift();
App.oven = App.cable.subscriptions.create channel: "OvenChannel", oven_id: oven_id,
  connected: ->
    console.log("connected")
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    console.log("received")
    $('.cookie-update').html(data.cookie_update)
    console.log(data)
