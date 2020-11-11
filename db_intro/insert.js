const mongoose = require ('mongoose');
mongoose.connect ('mongodb://localhost:27017/school');


const studentSchema = new mongoose.Schema ({
    name: String,
    age: Number,
    created : {
        type: Date,
        default: Date.now
    }

});


const Student = mongoose.model("Student", studentSchema);

const linda = new Student ({
    name: "Linda",
    age: 25,
})

const raky = new Student({
    name: "Raky",
    age: 18,
})

linda.save((err,student)=> {
        if (err) {
            console.log("something went wrong");
            console.log(err);
        } else {
            console.log (`We just saved the new student ${student.name} with ID ${student._id}`);
        }
})

raky.save((err,student)=> {
    if (err) {
        console.log("something went wrong");
        console.log(err);
    } else {
        console.log (`We just saved the new student ${student.name} with ID ${student._id}`);
    }
})