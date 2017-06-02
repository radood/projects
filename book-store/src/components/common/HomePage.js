import React from 'react';

class Home extends React.Component{

	constructor(props) {
		super(props);

		this.state = {
			value : "cool"
		};

		this.handleSubmit = this.handleSubmit.bind(this);
	}

	handleSubmit(event){
		this.setState({value : event.target.value});
		console.log(this.state.value);
	}

	render(){
		return (
			<div>
			<h1>Header</h1>
			<p>This is a description but you can change it using the form bellow. </p>
			<form>
				<input type="text" onChange={this.handleSubmit}/>
			</form>

			<p>{this.state.value}</p>
			</div>
		);
	}
};

export default Home;