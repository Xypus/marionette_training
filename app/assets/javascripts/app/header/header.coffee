@TrainingLog.module 'Header', (Header, App, Backbone, Marionette, $, _) ->

  Header.Buttons = Marionette.ItemView.extend

    template: 'header/buttons'

    ui:
      mainButton: '#main-button'
      productsButton: '#products-button'

    events:
      'click @ui.mainButton': 'showMain'
      'click @ui.productsButton': 'showProducts'

    showProducts: (e) ->
      e.preventDefault
      Backbone.history.navigate('products', {trigger: true})

    showMain: (e) ->
      e.preventDefault
      Backbone.history.navigate('/', {trigger: true})

