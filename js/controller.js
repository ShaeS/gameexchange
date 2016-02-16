var ctrl = angular.module("AllControllers", []);

ctrl.controller("chatCtrl", ["$scope", function ($scope) {
  $scope.hi = "Yo, what's up?";
  $scope.myid = "coolId";

  setInterval(function () {
    $.ajax({
      url: "./controller/message.php",
      type: "POST",
      dataType: "json",
      data: {
        method: "getall"
      },
      success: function (resp) {

        $scope.$apply(function () {
          $scope.msgs = resp;
        });
      }
    });
  }, 300);

  $scope.clickFunc = function (id) {
    $.ajax({
      url: "./controller/message.php",
      type: "POST",
      dataType: "html",
      data: {
        method: "like",
        message_id: id,
        user_id: sessionStorage.id
      },
      success: function () {
        alert("inserted");
      }
    });
  };

}]);