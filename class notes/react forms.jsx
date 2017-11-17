Form Example

class MyForm extends Component {
  constructor() {
    super();
    this.state = {name: ''};
  }
  render() {
    return (
      <form>
        <label>Your Name?</label>
        <input type="text" value={this.state.name}/>
        <button type="submit">Submit</button>
      </form>
    );
  }
}


Add onChange Listener

update_name (event) {
  this.setState({name: event.target.value});
}
\\ render changes
<input type="text" value={this.state.name}
  onChange={event => this.update_name(event)}/>


  Add A Select

this.state = {name: '', color: 'blue'};
// render
<select value={this.state.color}
  onChange={event => this.update_color(event)}>
  <option value="red">Red</option>
  <option value="blue">Blue</option>
</select>


Form Refactor

update_state (event, key) {
  this.setState({[key]: event.target.value});
}
// render changes
onChange={event => this.update_state(event, 'name')}
onChange={event => this.update_state(event, 'color')}
