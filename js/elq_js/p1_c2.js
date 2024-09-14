console.log("** Chapter 02: Program Structure **\n");

// Bindings
console.log("Binding Or Variable\n");
let caught = 5 * 5;
let ten = 10;
console.log(ten * ten);
console.log(caught);

let mood = "light";
console.log(mood);
// → light
mood = "dark";
console.log(mood);
// → dark

let one = 1,
  two = 2;
console.log(one + two);
// → 3

let name = "Ayda";
const greeting = "Hello ";
console.log(greeting + name);
// → Hello Ayda

console.log("\nBinding Names\n");

binding_rules = `Binding names can be any sequence of one or more letters. Digits can be part of binding names—catch22 is a valid name, for example—but the name must not start with a digit. A binding name may include dollar signs ($) or underscores (_) but no other punctuation or special characters.`;

reserved_keyword = `break case catch class const continue debugger default
delete do else enum export extends false finally for
function if implements import interface in instanceof let
new package private protected public return static super
switch this throw true try typeof var void while with yield`;

console.log(`\n ${binding_rules}`);
console.log(`\n ${reserved_keyword}`);
