// values Types and Operators

// Strings representation
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
console.log(!false);

console.log(typeof 4.5);
console.log(typeof "x");
console.log(typeof true);
console.log(-(10 - 2));

// Boolean Operators
console.log(3 > 2);
console.log(3 < 2);
console.log("Aardvark" < "Zoroaster"); // based on length of string

console.log("Garnet" != "Ruby");
console.log("Pearl" == "Amethyst");

console.log(NaN == NaN);
console.log("hello" == NaN);

// Logical Operators
console.log(true && false);
console.log(true && true);
console.log(false || true);
console.log(true || true);
console.log(false || false);

console.log(1 + 1 == 2 && 10 * 10 > 50);

// conditional Operator
console.log(true ? 1 : 2);
console.log(false ? 1 : 2);
console.log(2 == 2 ? 1 : 2);

// Automatic type convension
console.log(8 * null);
console.log("5" - 1);
console.log("5" + 1);
console.log("five" * 2);
console.log(false == 0);
console.log(null == undefined);
console.log(null == 0);

// Short-circuiting of logical operators
console.log("Short-circuiting of logical operators");
console.log(null || "user");
console.log("Agnes" || "user");
