//variables



class Person{
String? userName;
int? phoneNumber;
double? height;
bool response;
var age;


Person({required this.userName, required this.phoneNumber, this.height,this.response =false, this.age});

// method to display person details
void displayDetails(){
print("Username: $userName");
print("Phone number: $phoneNumber");
print("Height: $height");
print("Response: $response");
print("Age: $age");
}
}

//usage
