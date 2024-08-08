#CREATE
// Insert a single document
db.collection.insertOne({
  name: "John Doe",
  age: 30,
  email: "johndoe@example.com"
});

// Insert multiple documents
db.collection.insertMany([
  { name: "Jane Smith", age: 25, email: "janesmith@example.com" },
  { name: "Bob Johnson", age: 35, email: "bjohnson@example.com" }
]);

#UPDATE
// Update a single document
db.collection.updateOne(
  { name: "John Doe" }, // Filter criteria
  { $set: { age: 31, email: "johndoe_updated@example.com" } } // Update operation
);

// Update multiple documents
db.collection.updateMany(
  { age: { $gt: 30 } }, // Filter criteria
  { $inc: { age: 1 } } // Update operation (increment age by 1)
);

#DELETE
// Delete a single document
db.collection.deleteOne({ name: "John Doe" });

// Delete multiple documents
db.collection.deleteMany({ age: { $gte: 40 } });

