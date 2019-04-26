Generatorf funtion* : 
- defined as funtion*
- such functions return iterator
- on iterator.next() returns {value: Object/undefined, done: true/false}
- the value passed to next function is replaced with the yield expression.
- generator can also pass the control to the other generator function using yield*

### Simple generator fuction
```javascript
function* generator(value){
  yield value;
  yield value + 10;
}

let iterator = generator(13);
iterator.next() // returns {value: 13, done: false}
iterator.next() // returns {value: 23, done false}
iterator.next() // return {value: undefined, done: true}
```
### replacing yield value with params to .next(param)
```javascript
function* generator(value){
  console.log(yield);
  console.log('I gave', value, 'you gave :', yield value);
  console.log('I gave', value, 'you gave :', yield value);
}

let iterator = generator(13);
iterator.next(999) // returns {value: 13, done: false}
iterator.next(888) // returns {value: 23, done false}
iterator.next(777) // return {value: undefined, done: true}
```

Question : 
What are the outputs of following : 

```javascript
  const generator = function*(){
    console.log(yield) // what does this print
  }
  const g = generator()
  g.next('will this be printed ?');
```

Ans : nothing, because generator will pause to wait for input from .next()

```javascript
  const generator = function*(){
    console.log(yield) // what does this print
  }
  
  const g = generator()
  g.next('will this be printed ?');
  g.next('here we go...');
```


```javascript
```


Resources : 
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/function*
