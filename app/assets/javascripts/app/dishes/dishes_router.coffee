@TrainingLog.module 'Dishes', (Dishes, App, Backbone, Marionette, $, _) ->

  @startWithParent = false

  startRouter =  ->
    new Marionette.AppRouter

      controller:
        dishes: ->
          view = new App.Main.Layout
          view.dishesIndex()

      appRoutes:
        'dishes(/)': 'dishes'

  Dishes.start = ->
    startRouter()
    Backbone.history.loadUrl Backbone.history.getFragment()