class App extends Controller
    title: ''

    openMenu: ->
        @$mdSidenav('left').open()

    constructor: ($scope, $rootScope, @$mdSidenav)->
        $rootScope.$on '$stateChangeSuccess', (event, toState) =>
            @title = toState.name
