const mongoose = require ('mongoose');
mongoose.connect ('mongodb://localhost:27017/school');


const studentSchema = new mongoose.Schema ({
    name: String,
    age: Number,
    created: {
        type:Date,
        default: Date.now
    }
})

const Student = mongoose.model("Student", studentSchema);

Student.find({}, (err, students) => {
    if (!err) {
        console.log(students);
    }
});

Student.find({age:25}, (err,students) => {
    if (!err) {
        console.log(students);
    }
})