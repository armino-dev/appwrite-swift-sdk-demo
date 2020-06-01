///
/// Created by Armino <devel@boioiong.com>
/// GitHub: https://github.com/armino-dev/appwrite-swift-sdk-demo
///

import Foundation
import AppwriteSwiftSDK



print ("Executing a sample REST Api request")

var client: Client = Client()

client    
    .setProject(value: "your_project_id_here")
    .setEndpoint(endpoint: "http://localhost/v1")
    .setKey(value: "your_api_key_here")
    .setMode(value: "admin")

let users: Users = Users(client: client);


var result: [Any] = users.listUsers()


let r1: [String: Any] = result[0] as! [String : Any]
print("Records: ", r1["sum"] as Any)

let r2 = r1["users"] as! Array<Any>

for r3 in r2 {
    let r4: [String: Any] = r3 as! [String: Any]
    for (k, v) in r4 {
        print("\(k) = \(v)")
    }
}

