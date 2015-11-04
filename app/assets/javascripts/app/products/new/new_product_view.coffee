@TrainingLog.module 'Products', (Products, App, Backbone, Marionette, $, _) ->

  Products.Modal = Marionette.ItemView.extend

    template: 'modal'
    ui:
      saveProduct: '#submit'
    events:
      'click @ui.saveProduct': 'saveProduct'

    onRender: ->
      $('#modal').modal 'show'

    saveProduct: (e) ->
      e.preventDefault()
      model = new App.Entities.Product()
      attrs =
        name: $('#name').val()
        calories: $('#calories').val()
        proteins: $('#proteins').val()
        carbs: $('#carbs').val()
        fats: $('#fats').val()
      model.save {product: attrs},
        success: (model) =>
          @trigger 'model:saved', model
          $('#modal').modal 'hide'
        error: (model, response) ->
          console.log(response)
