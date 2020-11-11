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

db.cars.insertMany ([

    {brand: "Aston Martin", model: "DB9" , year: 2010},
    {brand: "Range Rover", model: "Discovery Sport" , year: 2017}

])
// ne fonctionne pas via le commander mais fonctionne via Robot 3T