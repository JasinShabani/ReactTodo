import React, { Component } from 'react';
import PropTypes from 'prop-types';

export class TodoItemm extends Component {
   //uzerine cizgi cizmek
 getStyle=() =>{
     return{
         background: 'rgba(243, 243, 243, 0.77)',
         padding :'10px',
         borderBottom:'0px #ccc dotted',
         textDecoration:this.props.todo.completed ? 'line-through' :'none',
         
     }
     
 }
 getStylebos=() =>{
    return{
    }
    
}
 
// isaretle = (e) =>{
  //   console.log(this.props)
// }
   render() {
       const {id,title}=this.props.todo;
       const {idd,completed}=this.props.todo;
       if(completed){
       return (
          
           <div style={this.getStyle()}>
                
               <h6>
                   {title}
               </h6>
           </div>
       )
    }else{
    return (
        <div style={this.getStylebos()}>
            <p></p>
        </div>
    )}
   }
}

TodoItemm.propTypes={
   todo: PropTypes.object.isRequired
}
const btnStyle={
  background:'rgb(84, 37, 42)',
  color: '#fff',
  border: 'none',
  padding: '5px 9px',
   borderRadius: '50%',
   cursor: 'pointer',
   float: 'right'

}
//const itemStyle={
 //  backgroundColor:'#f4f4f4'
//}
export default TodoItemm
