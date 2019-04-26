Generatorf funtion* : 
- defined as funtion*
- such functions return iterator
- on iterator.next() returns {value: Object/undefined, done: true/false}


e.g
```javascript
function* generator(value){
  yield value;
  yield value + 10;
}

const iterator = generator(13);
iterator.next() // returns {value: 13, done: false}
iterator.next() // returns {value: 23, done false}
iterator.next() // return {value: undefined, done: true}
```

Resources : 
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/function*
