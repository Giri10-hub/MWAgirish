var app = angular.module('eventApp', []);

app.controller('EventController', function($scope, $http) {
    $http.get('EventServlet').then(function(response) {
        var x2js = new X2JS();
        var jsonObj = x2js.xml_str2json(response.data);
        $scope.events = jsonObj.schedule.event;
    });

    $scope.sendMessage = function() {
        alert('Message sent!');
    };
});
