// values Types and Operators
console.log("** Chapter 01: Values Types and Operators **");

console.log(typeof 4.5);
console.log(typeof "x");

console.log(`half of 100 is ${195 / 2}`);

// Strings
console.log("con" + "cat" + "e" + "nate");

// Strings representation
console.log("** String Represenattion");
x = `Down on the sea`; // backtics representation or template literals
y = "Lie on 'the' ocean"; // double quotes representation
z = '"Float" on the ocean'; // single qoutes representation
a = '"JS" is Fun';
b = "'practice' more ${2+2}";

console.log(x);
console.log(y);
console.log(z);
console.log(a);
console.log(z);

console.log(`\nhalf of 100 is ${195 / 2}`);

// Unary Operators
console.log("** Unary Operator");
console.log(!false);

console.log(typeof 4.5);
console.log(typeof "x");
console.log(typeof true);
console.log(-(10 - 2));

// Boolean Operators
console.log("** Boolean Operator");
console.log(3 > 2);
console.log(3 < 2);
console.log("Aardvark" < "Zoroaster"); // based on length of string

console.log("Garnet" != "Ruby");
console.log("Pearl" == "Amethyst");

console.log(NaN == NaN);
console.log("hello" == NaN);

// Logical Operators
console.log("** Logical Operator");
console.log(true && false);
console.log(true && true);
console.log(false || true);
console.log(true || true);
console.log(false || false);

console.log(1 + 1 == 2 && 10 * 10 > 50);

// conditional Operator
console.log("** Conditional Operator");
console.log(true ? 1 : 2);
console.log(false ? 1 : 2);
console.log(2 == 2 ? 1 : 2);

// Automatic type convension
console.log("** Automatic Type Convension");
console.log(8 * null);
console.log("5" - 1);
console.log("5" + 1);
console.log("five" * 2);
console.log(false == 0);
console.log(null == undefined);
console.log(null == 0);

// Short-circuiting of logical operators
console.log("** Short-circuiting of logical operators");
console.log(null || "user");
console.log("Agnes" || "user");
console.log("Agnes" && "user");

console.log(0 || 100);
// → 100
console.log(0 ?? 100);
// → 0
console.log(null ?? 100);
// → 100
