var angular_app = angular.module('reclamacoes');
angular_app.controller("ReclamacaoController", ['$scope', '$resource', '$http', '$q', function($scope, $resource, $http, $q){
    var self = this;
    $scope.medicos = [];
    $scope.reclamacao = {};
    //obtendo os dados vindos da api
    var medicos = $resource("/painel/medicos/");
    medicos.query(function(dados){
       $scope.medicos = dados; 
       console.log($scope.medicos);
    });
    
}]);