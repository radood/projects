export default (state = [], action) => {

	switch(action.type){

		case 'CREATE_BLOG': return [
		...state, Object.assign({}, {action.content, action.author , action.title} );
		];

		default: return state;
	}

};