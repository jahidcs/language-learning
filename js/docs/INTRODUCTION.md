### What is JavaScript?

- JavaScript, often abbreviated JS, is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS. It lets us add interactivity to pages e.g. you might have seen sliders, alerts, click interactions, popups, etc on different websites — all of that is built using JavaScript. Apart from being used in the browser, it is also used in other non-browser environments as well such as Node.js for writing server-side code in JavaScript, Electron for writing desktop applications, React Native for mobile applications, and so on.

### History of JS

[Brief History](https://roadmap.sh/guides/history-of-javascript) credit - roadmp.sh

- js announced in a press release by Netscape in 1995 and created by Brendan Eich of Netscape
- ES1, ES2, ES3
  - In 1996, Netscape decided to submit it to ECMA International with the hopes of getting it standardized. First edition of the standard specification was released in 1997 and the language was standardized. After the initial release, ECMAScript was continued to be worked upon and in no-time two more versions were released ECMAScript 2 in 1998 and ECMAScript 3 in 1999.
- Decade of Silence and ES4

  - After the release of ES3 in 1999, there was a complete silence for a decade and no changes were made to the official standard. There was some work on the fourth edition in the initial days; some of the features that were being discussed included classes, modules, static typings, destructuring etc. It was being targeted to be released by 2008 but was abandoned due to political differences concerning language complexity. However, the vendors kept introducing the extensions to the language and the developers were left scratching their heads — adding polyfills to battle compatibility issues between different browsers.

- From silence to ES5

  - Google, Microsoft, Yahoo and other disputers of ES4 came together and decided to work on a less ambitious update to ES3 tentatively named ES3.1. But the teams were still fighting about what to include from ES4 and what not. Finally, in 2009 ES5 was released mainly focusing on fixing the compatibility and security issues etc. But there wasn’t much of a splash in the water — it took ages for the vendors to incorporate the standards and many developers were still using ES3 without being aware of the “modern” standards.

- Release of ES6 — ECMAScript 2015

  - After a few years of the release of ES5, things started to change, TC39 (the committee under ECMA international responsible for ECMAScript standardization) kept working on the next version of ECMAScript (ES6) which was originally named ES Harmony, before being eventually released with the name ES2015. ES2015 adds significant features and syntactic sugar to allow writing complex applications. Some of the features that ES6 has to offer include

        - Classes, Modules, Arrows
        - Enhanced object literals
        - Template strings
        - Destructuring
        - Default and rest parameters
        - Spread operator
        - let and const
        - Iterators for..of
        - Generators
        - map and set
        - Proxies and Symbols
        - Promises
        - Math, Number, String, Array, Object APIs and etc

    Browser support for ES6 is still scarce but everything that ES6 has to offer is still available to developers by transpiling the ES6 code to ES5. With the release of 6th version of ECMAScript, TC39 decided to move to yearly model of releasing updates to ECMAScript so to make sure that the new features are added as soon as they are approved and we don’t have to wait for the full specification to be drafted and approved — thus 6th version of ECMAScript was renamed as ECMAScript 2015 or ES2015 before the release in June 2015. And the next versions of ECMAScript were decided to published in June of every year.

- Release of ES7 — ECMAScript 2016

  - In June 2016, seventh version of ECMAScript was released. As ECMAScript has been moved to an yearly release model, ECMAScript 2016 (ES2016) comparatively did not have much to offer. ES2016 includes just two new features
    Exponentiation operator \*\*
    Array.prototype.includes

- Release of ES8 — ECMAScript 2017

  - The eighth version of ECMAScript was released in June 2017. The key highlight of ES8 was the addition of async functions. Here is the list of new features in ES8

    Object.values() and Object.entries()
    String padding i.e. String.prototype.padEnd() and String.prototype.padStart()
    Object.getOwnPropertyDescriptors
    Trailing commas in function parameter lists and calls
    Async functions

- What is ESNext then?

  - ESNext is a dynamic name that refers to whatever the current version of ECMAScript is at the given time. For example, at the time of this writing ES2017 or ES8 is the current ESNext.

- What does the future hold?

  - Since the release of ES6, TC39 has quite streamlined their process. TC39 operates through a Github organization now and there are several proposals for new features or syntax to be added to the next versions of ECMAScript. Any one can go ahead and submit a proposal thus resulting in increasing the participation from the community. Every proposal goes through four stages of maturity before it makes it into the specification.

  And that about wraps it up. Feel free to leave your feedback in the discord. Also here are the links to original language specifications ES6, ES7 and ES8.

### JS versions

[W3Schools](https://www.w3schools.com/js/js_versions.asp)

- ES1 ECMAScript 1 (1997)
  - First edition
- ES2 ECMAScript 2 (1998)
  - Editorial changes
- ES3 ECMAScript 3 (1999)
  - Added regular expressions
  - Added try/catch
  - Added switch
  - Added do-while
- ES4 ECMAScript 4 Never released
- ES5 ECMAScript 5 (2009)

  - Added "strict mode"
  - Added JSON support
  - Added String.trim()
  - Added Array.isArray()
  - Added Array iteration methods
  - Allows trailing commas for object literals

- ES6 ECMAScript 2015

  - Added default parameter values
  - Added let and const
  - Added Array.find()
  - Added Array.findIndex()

- ECMAScript 2016

  - Added Array.includes()
  - Added exponential operator (\*\*)

- ECMAScript 2017

  -Added string padding
  -Added Object.entries()
  -Added Object.values()
  -Added async functions
  -Added shared memory
  -Allows trailing commas for function parameters

- ECMAScript 2018

  - Added rest / spread properties
  - Added asynchronous iteration
  - Added Promise.finally()
  - Additions to RegExp

- ECMAScript 2019

  - String.trimStart()
  - String.trimEnd()
  - Array.flat()
  - Object.fromEntries
  - Optional catch binding

- ECMAScript 2020

  - The Nullish Coalescing Operator (??)
