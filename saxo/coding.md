### Commit guidelines
- commit message alwasy startgs with ***"#[tfs-task-id] Add/Adds/Added ..."***
- first line should have 80 chars or less, must be followed by a blank line : 
   ```
    // bad
    Merge bug-671254 to master
    Fix rounding
    671254 Fix rounding of open order prices
    #671254 Fix rounding of open order prices for certain instruments that require an extra check on the asset type to determine the number of decimals to use
    #671254 Fixed rounding of open order prices


    // good
    #671254 Fix rounding of open order prices

    Certain instruments require an extra check on the asset type to determine the number of decimals to use.
    ```
 - ***Note:*** The TFS PR system will automatically add a "Merged PR 39477" 
 

### Coding standards
```javascript
// bad
<Component
    hasProp={true}
    isLarge={false}
    items={[]}/>
 
 
// bad
<Component hasProp={true}
           isLarge={false}
           items={[]}
/>
  
// good
<Component
    hasProp={true}
    isLarge={false}
    items={[]}
/>
```

Reference Naming: Use PascalCase for React components and camelCase for their instances. eslint: react/jsx-pascal-case


```javascript
// bad
import reservationCard from './ReservationCard';

// good
import ReservationCard from './ReservationCard';

// bad
const ReservationItem = <ReservationCard />;

// good
const reservationItem = <ReservationCard />;

```


```javascript
// good
class extends React.Component {
  constructor(props) {
    super(props);

    this.onClickDiv = this.onClickDiv.bind(this);
  }

  onClickDiv() {
    // do stuff
  }

  render() {
    return <div onClick={this.onClickDiv} />;
  }
}
```
Prefix Boolean props with is, can, has, or should as appropriate.
```javascript

// bad
Component.propTypes = {
    foo: React.PropTypes.bool,
    bar: React.PropTypes.bool,
    baz: React.PropTypes.bool,
}
 
// good
Component.propTypes = {
    isFoo: React.PropTypes.bool,
    canBar: React.PropTypes.bool,
    hasBaz: React.PropTypes.bool,
}
```
If a prop can is not required, always use the defualt prop value : 
***also  propTypes should be written before defaultProps.***
```javascript
// bad
Component.defaultProps = {
    isBar: true,
};
  
Component.propTypes = {
    foo: React.PropTypes.number.isRequired,
    isBar: React.PropTypes.bool,
};
 
// good
Component.propTypes = {
    foo: React.PropTypes.number.isRequired,
    isBar: React.PropTypes.bool,
};
  
Component.defaultProps = {
    isBar: true,
};
```

Object shapres in should also be specified in the props
```javasript
// bad - no shape!
Component.propTypes = {
    foo: React.PropTypes.object.isRequired,
};
 
// good
Component.propTypes = {
    foo: React.PropTypes.shape({
        bar: React.PropTypes.number.isRequired,
        baz: React.PropTypes.bool.isRequired,
    }).isRequired,
};
```

***Using refs***
```javascript
// bad (as creates new function on each render())
render() {
    <Component ref={ref => this.fooEl = ref} />
}
 
 // good (locate ref setter alongside bound event handlers)
constructor() {
    super();
 
    // refs
    this.setFooEl = (ref) => { this.fooEl = ref };
}
 
render() {
    <Component ref={this.setFooEl} />
}
```

react-bind-handler node module is use used to automatically bind the methods starting with name handle* to the "this" : 
```javascript
class Component extends React.Component {
    constructor() {
        super();
        // this.handleTap is not bound to this context here
    }
    handleTap(evt) {}
};
 
export default bindHandlers(Component); 
```
            
Always use the classnames library  : 
```javascript
import classNames from 'classnames';
 
// bad (string interpolation)
<Component className={`${this.props.customClass} grid grid--series`} /> 
 
// good
const classes = classNames(this.props.customClass, 'grid grid--series');
 
<Component className={classes} />  

// bad
<Component className={classNames({'fooClass': this.prop.isFoo, 'barClass': this.prop.isBar})} />
 
// good
const classes = classNames({
   'fooClass': this.prop.isFoo,
   'barClass': this.prop.isBar
});
 
<Component className={classes} /> 
```

Use **PureComponent** by default


