const fs = require("fs");

const file = JSON.parse(fs.readFileSync("./test.json", "utf8"));
//console.log(file);

let x = {};

const myFunction = (obj, parentKey ) => {

  Object.keys(obj).forEach(key => {
   // console.log(key);
    if ( typeof obj[key] === 'object'){
      console.log(obj[key], key)
       myFunction(obj[key], key);
    }


    
  })
}

myFunction(file);

//console.log(x);