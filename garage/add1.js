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

const espace = new Car ({
    brand: "Renault",
    model:"Espace",
    year: 1999,
})


const scenic = new Car ({
    brand: "Renault",
    model:"Scenic",
    year: 2004,
})

const troiscenthuit = new Car ({
    brand: "Peugeot",
    model:"308",
    year: 2017,
})


// espace.save().then(res => console.log(res))
scenic.save().then(res => console.log(res))
troiscenthuit.save().then(res => console.log(res))
