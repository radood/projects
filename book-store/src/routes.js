import React  from 'react';
import {Route, IndexRoute} from 'react-router';
import Home from './components/common/HomePage'
import Book from './components/common/bookPage';
import App from './components/App';
import Blog from './components/common/blogpage';

export default (
  <Route path="/" component={App}>
    <IndexRoute component={Home}></IndexRoute>
    <Route path="/books" component={Book}></Route>
    <Route path="/blog" component={Blog}></Route>
  </Route>
);