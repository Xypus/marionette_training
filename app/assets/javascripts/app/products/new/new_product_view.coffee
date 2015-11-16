@TrainingLog.module 'Products', (Products, App, Backbone, Marionette, $, _) ->

  Products.Modal = Marionette.ItemView.extend
    className: 'modal-dialog modal-sm'
    model: new App.Entities.Product
    template: 'modal'
    ui:
      saveProduct: '#submit'
    events:
      'click @ui.saveProduct': 'saveProduct'

    initialize: ->
      @on 'modal:presented', -> @$('#name').focus()

    onRender: ->
      Backbone.Validation.bind @, ->
        selector: 'id'

    saveProduct: (e) ->
      e.preventDefault()
      attrs =
        name: $('#name').val()
        calories: $('#calories').val()
        proteins: $('#proteins').val()
        carbs: $('#carbs').val()
        fats: $('#fats').val()
        category_id: $('#category').val()
      formModel = @model.set(attrs)
      validatedModel = formModel.validate()
      productValidator = new Products.Validator
      if formModel.isValid()
        formModel.save {product: attrs},
          success: (model) =>
            @trigger 'model:saved', model
            $('#modal').modal 'hide'
          error: (@model, response) ->
            errors = $.parseJSON(response.responseText).errors
            productValidator.displayErrors(errors, @)
      else
        productValidator.showValidations(validatedModel, @)