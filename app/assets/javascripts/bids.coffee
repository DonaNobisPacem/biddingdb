# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#fullpage').fullpage
    anchors: [
      'shoppingPage'
      'biddingPage'
      'quotationPage'
    ]
    menu: '#pageMenu'
    navigation: true
    slidesNavigation: true
    fixedElements: '#header'
    paddingTop: '50px'
  return