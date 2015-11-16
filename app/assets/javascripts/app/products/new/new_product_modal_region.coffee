@TrainingLog.module 'Products', (Products, App, Backbone, Marionette, $, _) ->

  Products.ModalRegion = Marionette.Region.extend

    el: '#modal'

    onShow: ->
      $('#modal').modal 'show'