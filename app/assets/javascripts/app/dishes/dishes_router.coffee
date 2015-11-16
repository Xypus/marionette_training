@TrainingLog.module 'Dishes', (Dishes, App, Backbone, Marionette, $, _) ->

  @startWithParent = false

  startRouter =  ->
    new Marionette.AppRouter

      controller:
        dishes: ->
          console.log('router action fired')
          view = new Dishes.Layout
          view.showIndex()

      appRoutes:
        'dishes(/)': 'dishes'

  Dishes.start = ->
    startRouter()
    Backbone.history.loadUrl Backbone.history.getFragment()