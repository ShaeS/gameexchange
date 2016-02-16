var GameApp = angular.module("GameApp", ["ngRoute","AllControllers"]);

GameApp.config([
  "$routeProvider", "$locationProvider",
  function ($routeProvider, $locationProvider) {
    
    $locationProvider.html5Mode(true);
    $routeProvider.when(
      "/usersignup", //name for the route
      {
        templateUrl: "view/usersignup.html"
      }
    ).when(
      "/userlogin", {
        templateUrl: "view/userlogin.html"
      }
    ).when(
      "/userupdate", {
        templateUrl: "view/userupdate.html"
      }
    );
  }
]);