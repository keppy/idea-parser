class IdeaParser.Routers.Ideas extends Backbone.Router
  routes:
    '': 'index'
    'ideas/:id': 'show'

  initialize: ->
    @collection = new Raffler.Collections.Ideas()
    @collection.fetch()

  index: ->
    alert "home page"
    view = new Raffler.Views.IdeasIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    aler "Idea #{id}"
