@app = angular.module('app', [
  #additional dependancies here, such as restangular
  'templates'
  ])

  # for compatibility with Rails CSRF protection

  @app.config([
    '$httpProvider', ($httpProvider)->
      $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
  ])

  @app.run(->
    console.log 'angular app running'
  )  
