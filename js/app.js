var GameApp = angular.module("GameApp", ["ngRoute","AllControllers"]);

GameApp.config([
  "$routeProvider", "$locationProvider",
  function ($routeProvider, $locationProvider) {
    
    $locationProvider.html5Mode(true);
    $routeProvider.when(
      "/usersignup", {
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
    ).when(
      "/gamegetlarge", {
        templateUrl: "view/gamegetlarge.html"
      }
    ).when(
      "/gamegetlist", {
        templateUrl: "view/gamegetlist.html"
      }
    ).when(
      "/userprofile", {
        templateUrl: "view/userprofile.html"
      }
    ).when(
      "/gamedetails", {
        templateUrl: "view/gamedetails.html"
      }
    ).when(
      "/editgame", {
        templateUrl: "view/editgame.html"
      }
    ).when(
      "/gamecreate", {
        templateUrl: "view/gamecreate.html"
      }
    ).when(
      "/profile", {
        templateUrl: "view/profile.html"
      }
    ).otherwise(
      {redirectTo: "/userlogin"}
    );
  }
]);