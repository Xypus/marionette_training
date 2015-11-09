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
      @on 'modal:presented', -> @$().focus()

    onRender: ->
      Backbone.Validation.bind @, ->
        selector: 'id'

      $('#modal').modal 'show'

    saveProduct: (e) ->
      e.preventDefault()
      attrs =
        name: $('#name').val()
        calories: $('#calories').val()
        proteins: $('#proteins').val()
        carbs: $('#carbs').val()
        fats: $('#fats').val()
      formModel = @model.set(attrs)
      validatedModel = formModel.validate()
      if formModel.isValid()
        formModel.save {product: attrs},
          success: (model) =>
            console.log model
            @trigger 'model:saved', model
            $('#modal').modal 'hide'
      else
        @showValidations(validatedModel)

    showValidations: (validatedModel) ->
        $form = @$('form')
        $form.children().removeClass('has-error')
        $form.find('.errors').css('display', 'none')
        $form.find('label').css('display', 'initial')
        $.each validatedModel, (key, value) =>
          selector = '#' + String(key)
          selectorParent = @$(selector).parent()
          selectorParent.addClass('has-error')
          label = selectorParent.find('label')
          errorsDiv = selectorParent.find('.errors')
          label.css('display', 'none')
          errorsDiv.css('display', 'block').html(String(value)).css('color', '#a94442')




# BACKEND VALIDATION
#      $('form').children().removeClass('has-error')
#      $('form').find('.errors').each ->
#        $(@).css('display', 'none')
#      $('form').find('label').each ->
#        $(@).css('display', 'initial')
#      attrs =
#        name: $('#name').val()
#        calories: $('#calories').val()
#        proteins: $('#proteins').val()
#        carbs: $('#carbs').val()
#        fats: $('#fats').val()
#      @model.save {product: attrs},
#        success: (@model) =>
#          @trigger 'model:saved', model
#          $('#modal').modal 'hide'
#        error: (@model, response) ->
#          errors = $.parseJSON(response.responseText).errors
#          $.each errors, (key, value) ->
#            selector = '#' + String(key)
#            selectorParent = $(selector).parent()
#            selectorParent.addClass('has-error')
#            label = selectorParent.find('label')
#            errorsDiv = selectorParent.find('.errors')
#            label.css('display', 'none')
#            errorsDiv.css('display', 'block').html('Value ' + String(value) + '!').css('color', '#a94442')

