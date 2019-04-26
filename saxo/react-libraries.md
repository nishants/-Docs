# Saxolab libraries : 
- ***[redux-tale](https://www.npmjs.com/package/redux-tale)***
  - re-implentation of redux-saga
  - synchronous first
  - 22% of size of redux-saga
  - actions don't interleave (no racing for action), makind debugging easier
  - does not implement advanced redux-saga features like spawn, fork, 

# Third Party libraries
- ***[reselect](https://github.com/reduxjs/reselect)***
  - implemenation of memoization with redux
  - does not change output object, unless the input params of function changes
  - improves perfomance becaus the state object is retained (===) till new values are applied to it.
  - e.e 
    ```javascript 
    import { createSelector } from 'reselect'
    
    ```
