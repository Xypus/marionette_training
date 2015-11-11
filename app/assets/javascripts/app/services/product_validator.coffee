@TrainingLog.module 'Products', (Products, App, Backbone, Marionette, $, _) ->

  Products.Validator = Marionette.Object.extend

    showValidations: (validatedModel, caller) ->
      $form = caller.$('form')
      $form.children().removeClass('has-error')
      $form.find('.errors').css('display', 'none')
      $form.find('label').css('display', 'initial')
      @displayErrors(validatedModel, caller)

    displayErrors: (errors, caller) ->
      $.each errors, (key, value) =>
        selector = ->
          if key == 'category_id'
            '#category'
          else
            '#' + String(key)
        selectorParent = caller.$(selector).parent()
        selectorParent.addClass('has-error')
        label = selectorParent.find('label')
        errorsDiv = selectorParent.find('.errors')
        label.css('display', 'none')
        errorsDiv.css('display', 'block').html(String(value)).css('color', '#a94442')