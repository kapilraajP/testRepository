import ballerina/http;

type Employee record {
    string name;
    int age;
    Person[] person;
};


type Person record {
    string personName;
    int age;
};

configurable Employee employee = ?;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {
    resource function get greeting() returns string|error {
        // Send a response back to the caller.
        return "Hello, " + employee.toString();
    }
}
