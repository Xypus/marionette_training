@TrainingLog.module "Products", (Products, App, Backbone, Marionette, $, _) ->

  @startWithParent = false

  Products.Layout = Marionette.LayoutView.extend

    el: 'body'

    regions:
      main: '#main'

    productsList: ->
      collection = new App.Entities.Products
      collection.fetchCollection()
      @getRegion('main').show(new Products.All(collection: collection))
      App.addRegions
        modalRegion: "#modal"

    mainView: ->
      console.log('show hello')










