Getting Started: index.js



import App from './App';
import injectTapEventPlugin from 'react-tap-event-plugin';
// Needed for onTouchTap
// http://stackoverflow.com/a/34015469/988941
injectTapEventPlugin();
ReactDOM.render(
  <App />,
  document.getElementById('root')
);


import React, { Component } from 'react';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';
class App extends Component {
  render() {
    return (
      <MuiThemeProvider>
        <MyForm/>
      </MuiThemeProvider>
    );
  }
}
export default App;


import AppBar from 'material-ui/AppBar';
// Add to Render:
<AppBar title="My Awesome Form" />



import getMuiTheme from 'material-ui/styles/getMuiTheme';
import {red700} from 'material-ui/styles/colors';
const theme = getMuiTheme({
  palette: {primary1Color: red700}
});
class App extends Component {
  render() {
    return (
      <MuiThemeProvider muiTheme={theme}>
      </MyForm
      </MuiThemeProvider>
    );
  }
}


import {Card, CardActions, CardTitle, CardText} from 'material-ui/Card';
import RaisedButton from 'material-ui/RaisedButton';
<Card className="md-card">
  <CardTitle title="My Form" subtitle="subtitle"/>
  <CardText>
    ...
  </CardText>
  <CardActions>
    <RaisedButton label="Submit" primary={true}/>
  </CardActions>
</Card>

import TextField from 'material-ui/TextField';
<TextField floatingLabelText="Your Name"
  defaultValue={this.state.name}
  onChange={event => this.update_state(event, 'name')}/>


  import SelectField from 'material-ui/SelectField';
import MenuItem from 'material-ui/MenuItem';
update_select = (event, index, value) => {
  this.setState({color: value});
}
\\ render
<SelectField
  floatingLabelText="Color"
  value={this.state.color}
  onChange={this.update_select}
>
  <MenuItem value="red" primaryText="Red" />
  <MenuItem value="blue" primaryText="Blue" />
</SelectField>
