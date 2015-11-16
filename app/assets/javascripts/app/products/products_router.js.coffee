@TrainingLog.module 'Products', (Products, App, Backbone, Marionette, $, _) ->

  @startWithParent = false

  startRouter =  ->
    new Marionette.AppRouter

      controller:
        products: ->
          view = new App.Main.Layout
          view.productsIndex()

      appRoutes:
        'products(/)': 'products'

  Products.start = ->
    startRouter()
    Backbone.history.loadUrl Backbone.history.getFragment()




