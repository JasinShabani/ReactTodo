import React from 'react'; 
import TodoItemm from'./TodoItemm';
import PropTypes from 'prop-types';
class Gecmis extends React.Component {
   // isaretle=() =>{
     //   console.log('Hello')
    //}
    
    render(){
        
        return this.props.todos.map((todo) => (
            
            <TodoItemm key={todo.id} todo={todo} />
        ));
    }
    
}
//Proptypes
Gecmis.propTypes={
    gecmis: PropTypes.array.isRequired
}
export default Gecmis;
