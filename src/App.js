import React from 'react';
import Header from './components/katman/Header';
import Todos from './components/Todos';
import Gecmis from './components/Gecmis';
import {BrowserRouter as Router,Route} from'react-router-dom';
import EkleTodo from './components/EkleTodo';
import uuid from 'uuid';
import './App.css';

class App extends React.Component {
  state = {
    todos: [
      
    ]
  }
  //checkbox isaretlemek icin
  isaretle = (id) =>{
    this.setState({todos:this.state.todos.map(todo =>{
      if(todo.id === id){
        todo.completed= !todo.completed
      }
      return todo;
    })})
  }
  
  //Silmek icin
  silTodo= (id) =>{
    this.setState({todos:[...this.state.todos.filter(todo=> todo.id!== id)]});
  }

  //Eklemek icin
  ekleTodo=(title) =>{
    const yeniTodo= {
        id:uuid.v4(),
        title,
        completed:false
    }
    this.setState({todos:[...this.state.todos, yeniTodo]});
  }

  render(){ 
    return(

      <Router>
    <div className="App">
      <div className="container">
        
        <Header />
        <Route exact path="/" render={props =>(
          <React.Fragment>
            <EkleTodo ekleTodo={this.ekleTodo}/>
            <Todos todos={this.state.todos} 
            isaretle={this.isaretle}
            silTodo={this.silTodo}/>
            
            </React.Fragment>
            
        )} />
        
        <Route exact path="/about" render={props =>(
          <React.Fragment>
            <Gecmis todos={this.state.todos}/>
            </React.Fragment>
        )} />
        
    
          
      </div>
    </div>
    </Router>
    
  );


  
}
}

export default App;