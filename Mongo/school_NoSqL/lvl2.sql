--1
db.students.aggregate([
{ $match:{ 
    "id":5 } 
    },
 {$lookup:{
       from: "favorites",
       localField:"id",
       foreignField: "studentsID",
       as: "studfav"
     }    
 },
{$unwind:"$studfav"},
{$project:{"studfav.sport":1, "studfav.class":1, "name":1, "city":1
   }
}])


--2
db.students.aggregate([
{ $match:{ 
    "id":5 } 
    },
 {$lookup:{
       from: "favorites",
       localField:"id",
       foreignField: "studentsID",
       as: "favsport"
     }    
 },
{$unwind:"$favsport"},
{$project:{"favsport.sport":1, "name":1,
   }
}])


--3
db.students.aggregate([
{ $match:{ 
    "id":1 } 
    },
 {$lookup:{
       from: "favorites",
       localField:"id",
       foreignField: "studentsID",
       as: "favclass"
     }    
 },
{$unwind:"$favclass"},
{$project:{"favclass.class":1, "name":1,
   }
}])

--4
db.favorites.aggregate([
{ $match:{ 
    "class": "music"} 
    },
 {$lookup:{
       from: "students",
       localField:"studentsID",
       foreignField: "id",
       as: "favclass"
     }    
 },
{$unwind:"$favclass"},
{$project:{"favclass.name":1, "favclass.city":1, "favclass.id":1, 
   }
}])
-- manque colonnes

--5
db.favorites.aggregate([
{ $match:{ 
    "sport": "tennis"} 
    },
 {$lookup:{
       from: "students",
       localField:"studentsID",
       foreignField: "id",
       as: "favsport"
     }    
 },
{$unwind:"$favsport"},
{$project:{"favsport.name":1, "favsport.city":1, "favsport.id":1, 
   }
}])

--6

db.favorites.aggregate([
{ $match:{ 
    "class": "arts"} 
    },
 {$lookup:{
       from: "students",
       localField:"studentsID",
       foreignField: "id",
       as: "favarts"
     }    
 },
{$unwind:"$favarts"},
{$project:{"favarts.name":1, "favarts.city":1, "favarts.id":1, 
   }
}])


--7
db.getCollection('students').count({"city": "paris"})