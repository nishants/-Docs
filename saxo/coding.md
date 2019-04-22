
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

            
            



