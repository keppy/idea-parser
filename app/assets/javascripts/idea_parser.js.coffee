window.IdeaParser =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Raffler.Routers.Ideas()
    BackBone.history.start()

$(document).ready ->
  IdeaParser.init()
