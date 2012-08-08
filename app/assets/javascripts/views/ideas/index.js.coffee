class IdeaParser.Views.IdeasIndex extends Backbone.View
  template: JST['ideas/index']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(entries: @collection))
    this
