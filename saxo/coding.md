
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
