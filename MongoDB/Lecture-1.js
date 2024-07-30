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

// db.books.find({author : "Unknown", pages : 176}) -> output only author - unknown & pages - 176
// db.books.find({pages : {$eq :176}}) -> output only pages - 176
// db.books.find({pages : {$ne :176}}) -> output not equal pages - 176
// db.books.find({pages : {$gt :505}})
// db.books.find({pages : {$gte :505}})
// db.books.find({pages : {$lt :505}})
// db.books.find({pages : {$lte :505}})
// db.books.find({pages : {$in : [505, 176, 68]}})
// db.books.find({pages : {$nin : [505, 176, 68]}})
// db.books.find({$and : [{country : 'India'}, {pages : {$gt : 147}}]})
// db.books.find({$or : [{country : 'India'}, {pages : {$gt : 147}}]})
// db.books.find({$nor : [{country : 'India'}, {pages : {$gt : 147}}]})
// db.books.find({author : {$not : {$eq : "Unknown"}}})


// db.books.find({country : 'India'})
// db.books.aggregate([{$match: {country : 'India'}}])

// db.books.find({}, {title : 1, country : 1, pages : 1, _id : 0})
// db.books.find({}).project({link : 0, imageLink : 0})
// db.books.find({}).select({author : 1})
// db.books.aggregate([{$project: {year : 1, author : 1}},{$match: {year : {$gte : 1800, $lte : 1950}}}])

// db.books.find({}).count()
// db.books.aggregate([{$match: {year :{$gte : 505}}},{$count: "Sum"}])

// db.books.find({}).skip(5).limit(10)
// db.books.find({}).limit(5).skip(3)

// db.books.aggregate([
//     {$limit: 10},
//     {$skip: 6}
//     ])

// db.books.find({}).sort({author: -1})
// db.books.aggregate([{$sort: {year: -1}}])


// db.students.insertMany([
//     {
//         "studentId": "std001",
//         "stuName": "Magan",
//         "course": "Full-stack",
//         "faculty": "tea002"
//     },
//     {
//         "studentId": "std002",
//         "stuName": "Chhagan",
//         "course": "python-stack",
//         "faculty": "tea003"
//     },
//     {
//         "studentId": "std003",
//         "stuName": "Gagan",
//         "course": "Android Development",
//         "faculty": "tea001"
//     },
//     {
//         "studentId": "std004",
//         "stuName": "Raman",
//         "course": "iOS Development",
//         "faculty": "tea002"
//     },
//     {
//         "studentId": "std005",
//         "stuName": "Chaman",
//         "course": "UI/UX Designer",
//         "faculty": "tea001"
//     },
//     ])