@TrainingLog.module 'Header', (Header, App, Backbone, Marionette, $, _) ->

  Header.Buttons = Marionette.ItemView.extend

    template: 'header/buttons'

    ui:
      mainButton: '#main-button'
      productsButton: '#products-button'
      dishesButton: '#dishes-button'

    events:
      'click @ui.mainButton': 'showMain'
      'click @ui.productsButton': 'showProducts'
      'click @ui.dishesButton': 'showDishes'

    showProducts: (e) ->
      e.preventDefault
      Backbone.history.navigate('products', {trigger: true})

    showDishes: (e) ->
      e.preventDefault
      Backbone.history.navigate('dishes', {trigger: true})

    showMain: (e) ->
      e.preventDefault
      Backbone.history.navigate('/', {trigger: true})

