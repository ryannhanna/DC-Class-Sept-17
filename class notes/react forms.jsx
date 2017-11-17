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
