var DemoApplication = angular.module('DemoApplication', ['ngResource', 'smart-table']);

DemoApplication.controller('CustomerController', function ($scope, CustomerService) {
    $scope.genders = ['Male', 'Female'];
    $scope.hasServerErrors = false;

    // Get current date for the date check
    $scope.today = new Date();

    // Date formatting function
    var formatDateOut = (date) => moment(date).format('DD/MM/YYYY');

    // Convert 'DD/MM/YYYY' to 'MM/DD/YYYY' function
    var DateConverter = function (input) {
        var splittedDate = (input).split('/');
        return [splittedDate[1], splittedDate[0], splittedDate[2]].join('/');
    };

    // Date Checking function (check if before or equal today)
    $scope.CheckInvalidDate = function (dateToCheck, currentDate) {
        $scope.invalidDate = new Date(DateConverter(dateToCheck)) > currentDate;
    };

    // Date formatting for array
    var ArrayFormatDate = function (array) {
        return array.map((i) => {
            i.DOB = formatDateOut(i.DOB);
            return i;
        });
    };

    // Flattening the object without keys (and only validation errors)
    var FlattenObject = function (obj) {
        var tempArray = Object.keys(obj).reduce((r, k) => {
            return r.concat(obj[k]);
        }, []);
        return tempArray.filter(e => String(e).startsWith('Invalid:'));
    }

    // Validation Pattern (Regex)
    $scope.alphabeticPtn = /^[A-Za-z]+$/;
    $scope.datePtn = /^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$/;
    $scope.alphanumericPtn = /^[a-zA-Z0-9 -]*$/;
    $scope.numericPtn = /^[0-9.]+$/;

    //--- Get all ---
    $scope.GetAll = function () {
        var queryOp = CustomerService.query();
        // Format DOB before outputting it to html page
        queryOp.$promise.then(function (data) {
            $scope.customers = ArrayFormatDate(data);
        });
    }

    // Call this to load all the data at first
    $scope.GetAll();

    // Show Detail
    $scope.ShowDetail = function (c) {
        $scope.currentCustomer = c;
    };

    //--- Create ---
    // Part 1 - Generate objForCreate
    $scope.GenerateObjCreate = function () {
        $scope.hasServerErrors = false;
        $scope.invalidDate = false;
        $scope.objCreate = {
            'FirstName': '',
            'LastName': '',
            'Gender': 'Male',
            'DOB': '',
            'Address': '',
            'Money': ''
        };
    }

    // Part 2 - Create customer
    $scope.CreateCustomer = function (isValid, isDOBValid) {
        // Only perform date operation and date check if the format is correct
        if (isDOBValid && $scope.invalidDate) isDOBValid = false;
       
        // Only call the API when all inputs are valid and date check passed
        if (isValid && isDOBValid) {
            // Using clone object to avoid users seeing the DOB being converted
            var cloneObj = Object.assign({}, $scope.objCreate);
            // Format data before adding to db
            cloneObj.DOB = DateConverter($scope.objCreate.DOB);
            // Use promise here to make sure the GetAll() only run after all data are updated
            CustomerService.save(cloneObj)
            .$promise.then(function () {
                $('#createModal').modal('hide');
                $scope.GetAll();
            }, function (error) {
                $scope.errors = FlattenObject(error.data.ModelState);;
                $scope.hasServerErrors = true;
            });
        }
    };

    //--- Delete ---
    $scope.DeleteCustomer = function (customerId) {
        CustomerService.delete({ Id: customerId })
        .$promise.then(function () {
            $scope.GetAll();
        });
    };

    //--- Update ---
    // Part 1 - Retrieve customer for update
    $scope.RetrieveCustomer = function (customer) {
        $scope.hasServerErrors = false;
        $scope.invalidDate = false;
        $scope.objUpdate = Object.assign({}, customer)
    };

    // Part 2 - Update
    $scope.UpdateCustomer = function (isValid, isDOBValid) {
        // Only perform date operation and date check if the format is correct
        if (isDOBValid && $scope.invalidDate) isDOBValid = false;

        // Only call the API when all inputs are valid and date check passed
        if (isValid && isDOBValid) {
            // Using clone object to avoid users seeing the DOB being converted
            var cloneObj = Object.assign({}, $scope.objUpdate);
            cloneObj.DOB = DateConverter($scope.objUpdate.DOB);
            // Use promise here to make sure the GetAll() only run after all data are updated
            CustomerService.update(cloneObj)
            .$promise.then(function () {
                $('#editModal').modal('hide');
                $scope.GetAll();
            }, function (error) {
                console.log(error);
                $scope.errors = FlattenObject(error.data.ModelState);
                $scope.hasServerErrors = true;
            });
        }
    };
});

DemoApplication.factory('CustomerService', function ($resource) {
    return $resource('/api/customers/:Id', { Id: '@Id' }, {
        update: {
            method: 'PUT'
        }
    });
});