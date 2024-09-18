// js variable
/*
 * JavaScript variable names are case-sensitive
 ! Variable names cannot contain spaces.
 * Variables cannot be the same as reserved keywords such as `if` or `const`.
 * By convention, JavaScript variable names are written in camelCase.
 * Variables should be given descriptive names that indicate their content and usage (e.g. `sellingPrice` and `costPrice` rather than `x` and `y`).
 * You can not add number first
 * _, $ is acceptable but - not accaptable
 */

/*
 * Var Variable
 * You can re declare
 * You can re assaign
 * Global Scooped we can access it outside of block
 * var is hosted means it can be declare after assignment
 */

/*
 * let Variable
 ! You can not re declare
 * You can re assaign
 ? Block Scooped || we can not access it outside of block
 ! let is not hosted
 */

/*
 * const Variable
 ! You can not re declare
 ! You can not re assaign
 ? Block Scooped
 ! const is not hosted
 */

let fruit = "Mango";
3;
var x = "Jahid";
var x = "Hassan";

const n = "Jahid";

console.log(`${fruit} is my favorite`);
console.log("${fruit} is my favorite");
console.log(x);
console.log(n);

const info = {
  name: "jahid",
  age: 25,
};

info.name = "Hassan";
info.profession = "Software Engineer";

// info = {
//   first: "jahid",
//   class: 25,
// };
// it is not possible
console.log(info);
