
{$, $$} = require 'atom-space-pen-views'

module.exports =
class SampleView
  
  @panel = ->
    @div class:'overlay from-top native-key-bindings', tabindex: -1, =>
      
      @label =>
        @input class:'sample-chk', type:"checkbox"
        @text 'Test Chkbox &nbsp;'
      
      @button class: 'btn sample-toggle', 'toggle'

  constructor: () ->
    @$panel          = $$ SampleView.panel
    @$sampleChkBox   = @$panel.find '.sample-chk'
    @$panel.appendTo $ '.workspace'
    @$panel.find('.sample-toggle').click => @testClick()

  testClick: () ->
    checked = @$sampleChkBox.is ':checked'
    console.log 'was checked:', checked
    if not checked then @$sampleChkBox.attr checked: yes
    else @$sampleChkBox.removeAttr 'checked'
    console.log 'now checked:', @$sampleChkBox.is ':checked'
    
    