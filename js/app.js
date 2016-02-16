var GameApp = angular.module("GameApp", ["ngRoute","AllControllers"]);

GameApp.config([
  "$routeProvider", "$locationProvider",
  function ($routeProvider, $locationProvider) {
    
    $locationProvider.html5Mode(true);
    $routeProvider.when(
      "/send", //name for the route
      {
        templateUrl: "view/message.html"
      }
    ).when(
      "/user", {
        templateUrl: "view/user.html"
      }
    ).when(
      "/chat", {
        templateUrl: "view/allmsg.html",
        controller: "chatCtrl"
      }
    );
  }
]);