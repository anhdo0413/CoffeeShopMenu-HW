//
//  ContentView.swift
//  CoffeeShopMenu
//
//  Created by Enya Do on 2/22/23.
//

import SwiftUI

//PART 1A: Uncomment the section below
/*
class Coffee: ObservableObject, Identifiable {
    var itemNum: Int
    
    var drinkName: String
        
    var drinkType: [INSERT DATA TYPE]
    
    var price: [INSERT DATA TYPE]
    
    [INSERT PROPERTY WRAPPER] var quantity: [INSERT DATA TYPE]
    
    //Complete the class constructor
    init(itemNum: Int, drinkName: String) {
        self.itemNum = itemNum
        self.drinkname = drinkName
    }
}
*/

struct ContentView: View {
    //PART 1B: Initialize objects of the Coffee class aka "menu items" below

    
    //PART 4A - Instantiate variables that will help us calculate and display the total price
    /*
    [INSERT PROPERTY WRAPPER] private var totalPrice = [INSERT DATA]
    [INSERT PROPERTY WRAPPER] private var currentPrice = [INSERT DATA]
    [INSERT PROPERTY WRAPPER] private var showPrice = [INSERT DATA]
     */

    //PART 2A  - Uncomment the section below
    /*
    @State private var coffeeList: [Coffee] = []
    
    //Helpter Function to be called when body is run that will add objects to coffeeList
    func addListItems() {
        coffeeList = [] //Add your objects to your list here!
    }
    */
    
    // PART 3D: Helper function that updates currentPrice
    /*
    func updateCurrentPrice() {
        currentPrice = totalPrice
    }
     */
    
    var body: some View {
        VStack {
            //PART 2C: EDIT THE TITLE AND ADD A SUBTITLE BELOW
            Text("Your Coffee Shop Name")
            
            VStack {
                //PART 2C: ADD SOME MENU HEADERS IN THE HSTACK BELOW
                 HStack {
                     
                 }.padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 70))
                     .bold()
                
                //PART2B: DISPLAYING OUR MENU ITEMS
                /*
                ForEach(coffeeList) {i in
                    HStack {
                        VStack(alignment: .leading) {
                  
                            //Formats the price to a double containing 2 digits after the decimal point
                            var formattedPrice = String(format: "%.2f", [INSERT PRICE])
                            
                            //Display itemNum and drinkName
                            Text(String([INSERT ITEMNUM]) + ". " + [INSERT DRINK NAME])
                            
                            //Display drinkType and
                            Text("    " + [INSERT DRINK TYPE] + ", $" + formattedPrice).italic()
                        } .padding(.bottom, 10)
                 */
                        Spacer()
                
                        
                        //PART 3A: Decrement Buttom - Uncomment the section below
                        /*
                        Button("-", action: {
                            if (i.quantity > 0) {
                                i.quantity -=  1
                                //3C: Add a line of code to update the totalPrice variable below
                            }
                        }).padding(.bottom, 20)
                         */
                        
                        //PART 2B: Display the quantity of each item
                        /*
                        VStack(alignment: .leading) {
                            Text(String([INSERT QUANTITY]))
                        } .padding(.bottom, 20)
                        */
                
                        //PART 3A: IMPLEMENT YOUR INCREMENT BUTTON IN THE SPACE BELOW

                
                    }.padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 70))
                }.padding(.bottom, 15)
                
                //PART 3D - Implement totalPrice displaying button, Uncomment the section below
                /*
                VStack {
                    Button("Calculate Total Price", action: {
                        //IMPLEMENT THE FUNCTIONALITY OF THE BUTTON NELOW
                        
                    }).buttonStyle(.automatic)
                        .font(.system(size: 20))
                        .padding(.bottom, 5)
                        .bold()
                 
                    //Formats the currentPrice to a double containing 2 digits after the decimal point
                    let formattedTotalPrice = String(format: "%.2f", currentPrice)
                    
                    if showPrice {
                        //UPDATE THE EMPTY TEXT TO DISPLAY THE TOTAL PRICE WHEN SHOWPRICE IS TRUE
                        Text()
                    }
                }.padding(.top, 30)
                 */
                
            }
            
            Spacer()
            
        }.padding(.top, 55)
            //.onAppear(perform: addListItems)
    }
}


// This code generates a live content preview, feel free to delete it and use build instead to view your app!
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
