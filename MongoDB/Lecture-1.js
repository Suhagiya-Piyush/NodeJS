// Connect to MongoDB
// mongod

// Connect to Mongosh
// mongosh

// Show dbs
// use dbName
// show collections
// db.createCollection('collectionName')

// Insert Data into collection
// insertOne, insertMany

// db.users.insertOne({
//     "firstName" : 'John',
//     "lastName" : 'Peter',
//     "email" : 'john@test.in',
//     "age" : 21
// })

// db.users.insertMany([
//     {
//         "firstName" : 'Jolly',
//         "lastName" : 'Peter',
//         "age" : 23,
//         "gender" : "Female"
//     },
//     {
//         "firstName" : 'Virat',
//         "lastName" : 'Kohli',
//         "age" : 34,
//         "gender" : "Male",
//         "hobbies" : ['cricket', 'music', 'dancing']
//     },
//     {
//         "firstName" : 'Anushka',
//         "lastName" : 'Sharma Kohli',
//         "movies" : {
//             "hitMovie" : "PK",
//             "floopMovie" : "Sui-Dhaga",
//             "blockbuster" : "Sultan"
//         }
//     }
// ])

// db.users.find({ "gender": 'Female' });
// db.users.findOne({ "gender": 'Female' });

// db.hello.insertOne({
//     "test": 'Hello',
//     "movies": {
//         "hitMovie": "PK",
//         "floopMovie": "Sui-Dhaga",
//         "blockbuster": "Sultan"
//     }
// });

// db.person.insertMany([{"firstName" : "John", "lastName" : "Peter", "email" : "john@test.in", "age" : 56}, 
//                         {"firstName" : "Jolly", "lastName" : "Peter", "age" : 34, "gender" : "Female"},
//                         {"firstName" : "Viray", "lastName" : "Kohli", "age" : 34, "gender" : "Male", "hobbies" : ['cricket', 'music', 'dancing']}, 
//                         {"firstName" : "Anushka", "lastName" : "Sharma Kohli", "movies" : {"hitMovies" : "PK",
//                                                                                             "floopMovies" : "Sui-Dhaga",
//                                                                                             "blockBuster" : "Sultan"}}])
// db.person.find({})
// db.person.updateOne({firstName:'John'}, {$set:{gender: "Male", age : 35}}, {upsert: true});
// db.person.updateMany({}, {$set:{course : "Full-stack"}}, {upsert: true});
// db.person.updateMany({}, {$unset:{course : ""}}, {upsert: true});
// db.person.deleteOne({firstName : "Anushka"})
// db.person.deleteOne({_id : ObjectId("66988e033145857c755c85f3")})
// db.person.deleteMany({})