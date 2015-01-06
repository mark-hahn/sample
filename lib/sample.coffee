SampleView = require './sample-view'
{CompositeDisposable} = require 'atom'

module.exports = Sample =
  sampleView: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    @sampleView = new SampleView(state.sampleViewState)
