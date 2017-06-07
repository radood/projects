import React from 'react';
import { connect } from 'react-redux';
import * as blogActions from '../../actions/blogActions';

class Blogpage extends React.Component{

	constructor(props){
		super(props);
	}


	submitPost(content,author,title){
		this.props.createBlog(content,author,title);
		console.log(this.props.blog);
	}

	render(){
		let titleInput, authorInput, contentInput;

		return (
			<div>
				<h3>Blog Page</h3>
					{this.props.blogs.map((b,i) => 
						<b><p key={i}>{b.title.title}</p></b>)}
					{this.props.blogs.map((b,i) => 
						<p key={i}>{b.content.content}</p>)}
					{this.props.blogs.map((b,i) => 
						<p key={i}> Written by {b.author.author}</p>)}
				
				<div>
				<h3>Books Form</h3>
				<form onSubmit={e => {
					e.preventDefault();

					var tInput = {title: titleInput.value};
					var aInput = {author: authorInput.value};
					var cInput = {content: contentInput.value};

					this.submitPost(cInput,aInput,tInput);


					e.target.reset();
				}}>
					<h5>Title</h5>
					<input type="text" name="title" ref={node => titleInput = node}/>
					<h5>Author</h5>
					<input type="text" name="author" ref={node => authorInput = node}/>
					<h5>Content</h5>
					<input type="text" name="content" ref={node => contentInput = node}/>
					<h5></h5>
            		<input type="submit" />
          		</form>

				</div>
			</div>
		)
	}
};

const mapStateToProps = (state,ownProps) =>{
	return {
		blogs: state.blogs
	}
};

const mapDispatchToProps = (dispatch) =>{
	return {
		createBlog: (content,author,title) => dispatch(blogActions.createBlog(content,author,title))
	}

};

export default connect(mapStateToProps,mapDispatchToProps)(Blogpage);