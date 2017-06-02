export const createBlog = (content,author,title) => {

	return{
		type: 'CREATE_BLOG',

		content: content,
		author: author,
		title: title

	}

};