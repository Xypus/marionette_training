@TrainingLog.module "Main", (Main, App, Backbone, Marionette, $, _) ->

  @startWithParent = false

  Main.Layout = Marionette.LayoutView.extend

    el: 'body'

    regions:
      main: '#main'

    productsIndex: ->
      collection = new App.Entities.Products
      collection.fetchCollection()
      @getRegion('main').show(new App.Products.All(collection: collection))
      App.addRegions
        modalRegion: new App.Products.ModalRegion

    dishesIndex: ->
      indexView = new App.Dishes.IndexView
      @getRegion('main').show(indexView)










