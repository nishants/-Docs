1. Which of the following is faster : `const o = {}` or `const o = new Object()`
2. Which of following are immuable in Javascript ?
  - objects
  - functions
  - arrays
  - primitives

3. What are the immutability releated functions in Javascript ?
4. what is the result of following : 
  ```javascipt
  const o = {};
  console.log(o === Object.freeze(o))
  ```
5. Why would you need immutable js lib if there is Object.freeze method in javascript ?





Ans 
1- curly braces are faster than constructor
2- only primitives are immutable
3. following are immutability releated methods in javascipt : 
  - `Objet.seal()`      : does not allow adding/removing props to object (allows changing values), 
  - `Objet.preventExtension()` : prevents new properties from being added
  - `Objet.freeze()`    : does not allow adding/removing/updating props in object
  - `Objet.isSealed()`  : 
  - `Objet.isFrozen()`  : 
  - `Objet.isExtensible()` : 
  
4. Object.freeze does not change object. So awnser to true
5. immutable js does not just lock javascript objects, but also supports working with immutable objects.
