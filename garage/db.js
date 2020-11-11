const mongoose = require ('mongoose');
mongoose.connect ('mongodb://localhost:27017/garage');


const carSchema = new mongoose.Schema ({
    brand: String,
    model : String,
    year : Number,
    created: {
        type: Date,
        default: Date.now
    }

});

const Car = mongoose.model("Car", carSchema);
// console.log(carSchema)