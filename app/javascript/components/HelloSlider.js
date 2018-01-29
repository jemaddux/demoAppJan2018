import React from "react"
import PropTypes from "prop-types"

class HelloSlider extends React.Component {
  render () {
    return (
      <div>
        <h3>Insert slider here</h3>
        <div>Count: {this.props.count}</div>
      </div>
    );
  }
}

HelloSlider.propTypes = {
  count: PropTypes.node
};
export default HelloSlider
