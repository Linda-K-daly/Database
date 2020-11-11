db.getCollection('students').find({id:3})
db.getCollection('students').find({id:6})
db.getCollection('students').find({id:1}, {id:0 ,_id:0})
db.getCollection('students').find({id:2}, {name:1 ,_id:0})

