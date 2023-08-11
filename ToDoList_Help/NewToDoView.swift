//
//  NewToDoView.swift
//  ToDoList_Help
//
//  Created by scholar on 6/19/23.
//

//** This file contains all the code for the "popup" screen where users can add their own ToDo Item**

import SwiftUI

struct NewToDoView: View {
    
    //In Iteration 2, add @Environment here
    
    //Add a State property called title that will hold a String

    @State var title : String    //Add a State property called isImportant that will hold a Boolean
    
    //Bind the ToDoItems array here
        //Delete the ToDoItems array binding in iteration 2
    @State var isImportant : Bool
    
    //Bind the showNewTask property here
    
    var body: some View {
        VStack (alignment: .center){
            //Add Text View containing "Task title" here
            Spacer()
                .frame(height: -2.0)
            Text("Task Title")
                .font(.title)
                .shadow(radius: 1)
                .fontWeight(.bold)
            //Add TextField here with the Text "Enter task description" and binded to the title state property (text: $title)
                .frame(height: 90.0)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/);
            TextField("Enter the task description", text: $title)
                .font(.title3)
                .fontWeight(.bold)
                .frame(width:300.0, height: 50.0)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.title)
                .shadow(radius: 8)
                .border(Color.gray, width  : 1)
                
            //Add Toggle here that is binded to isImportant (isOn: $isImportant) and the text "Is it important?"
            Toggle(isOn: $isImportant){
                Text("Is it important?")
                    .shadow(radius: 1)
            }
            .padding()
            .frame(height: 70.0)
            //Add a padding modifier
            
            //Add Button here, delete any code in the action and with the text "Add"
            Button (action: {
                
            }) {
                Text("Add")
     
            }
            .buttonStyle(.borderedProminent)
        .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
        .accentColor(.blue)
        .shadow(radius: 3)
         
            //Add a padding modifier
            .padding()
        }
    }
    //Add the private function addTask here
        //In Iteration 2, update the function to save input to Core Data
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title : "", isImportant : false)
            //Add toDoItems: .constant([]) here (Iteration 1)
            //Add showNewTask: .constant(true) (Iteration 1)
            //Delete toDoItems: .constant([]) (Iteration 2_


        
    }
}
