@TrainingLog.module "Dishes", (Dishes, App, Backbone, Marionette, $, _) ->

  @startWithParent = false

  Dishes.Layout = Marionette.LayoutView.extend

    el: 'body'

    regions:
      main: '#main'

    showIndex: ->
      console.log('Dishes layout fired showindex')
      indexView = new Dishes.IndexView
      @getRegion('main').show(indexView)



