// Set up your root reducer here...
 import { combineReducers } from 'redux';
 import books from './bookReducers';
 import blogs from './blogReducers';

 export default combineReducers ({
 	blogs: blogs ,
 	books: books
 });