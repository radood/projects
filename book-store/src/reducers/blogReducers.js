export default (state = [], action) => {

	switch(action.type){

		case 'CREATE_BLOG': return [
		...state, Object.assign({}, {content: action.content, author: action.author, title: action.title})
		];

		default: return state;
	}

};