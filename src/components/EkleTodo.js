import React, { Component } from 'react'

export class EkleTodo extends Component {
    state ={
        title:''
    }
    onSubmit=(e) =>{
        e.preventDefault();
        if(this.state.title===''){
            return(
                alert("Lutfen bir sey giriniz")
                
            )
        }
        this.props.ekleTodo(this.state.title);
        this.setState({title:''})
    }
    onChange =(e) => this.setState({[e.target.name]: e.target.value});
    
    render() {
        return (
            <form onSubmit={this.onSubmit} style={{display: 'flex'}}>
                <input
                type="text"
                name="title"
                className="inpt"
                style={{flex: '10',padding: '5px'}}
                placeholder="Yapilacak Listeye ekle ..."
                value={this.state.title} 
                onChange={this.onChange} />
                <input
                type="submit"
                value="Submit"
                className="btn"
                style={{flex: '1'}}
                />
            </form>
        )
    }
}

export default EkleTodo
