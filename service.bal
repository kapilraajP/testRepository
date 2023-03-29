import ballerina/http;
import ballerina/io;

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

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting() returns string|error {
        // Send a response back to the caller.
        return "Hello, " + employee;
    }
}
