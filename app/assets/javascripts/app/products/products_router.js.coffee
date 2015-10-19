@TrainingLog.module 'Products', (Products, App, Backbone, Marionette, $, _) ->

  @startWithParent = false

  startRouter =  ->
    new Marionette.AppRouter

      controller:
        productsIndex: ->
          view = new Products.Layout
          view.productsList()

      appRoutes:
        'products(/)': 'productsIndex'

  Products.start = ->
    startRouter()
    Backbone.history.loadUrl Backbone.history.getFragment()




