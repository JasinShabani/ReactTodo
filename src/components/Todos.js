import React from 'react'; 
import TodoItem from'./TodoItem';
import PropTypes from 'prop-types';
class Todos extends React.Component {
   // isaretle=() =>{
     //   console.log('Hello')
    //}
    
    render(){
        
        return this.props.todos.map((todo) => (
            <TodoItem key={todo.id} todo={todo}
            isaretle={this.props.isaretle}
            silTodo ={this.props.silTodo} />
        ));
    }
    
}
//Proptypes
Todos.propTypes={
    todos: PropTypes.array.isRequired
}
export default Todos;
