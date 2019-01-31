import React, {Component} from 'react'

class Likes extends Component {

  constructor() {
    super()
  }

  componentWillMount() {
    const likes = parseInt(localStorage.getItem(`likes-${this.props.tripId}`)) || 0

    this.setState({likes: likes})
  }

  increment = () => {
    this.setState(prevState => ({
      likes: prevState.likes + 1
    }), () => {console.log(this.state)
    localStorage.setItem(`likes-${this.props.tripId}`, this.state.likes)
  });

  };


  render() {

    return (
      <div>
        {this.state.likes}
        <button onClick={this.increment}> Like </button>
      </div>
    )
  }
}

export default Likes;
