//
//  ContentView.swift
//  hw3
//
//  Created by Enya Do on 2/21/23.
//

import SwiftUI

class Coffee: ObservableObject, Identifiable {
    var itemNum: Int
    
    var drinkName: String
        
    var drinkType: String
    
    var price: Double
    
    @Published var quantity: Int
    
    init(itemNum: Int, drinkName: String, drinkType: String, price: Double) {
        self.itemNum = itemNum
        self.drinkName = drinkName
        self.drinkType = drinkType
        self.price = price
        self.quantity = 0
    }

}

struct ContentView: View {
    //Initialize objects of the Coffee class to add to your menu
    @StateObject var drink1 = Coffee(itemNum: 1, drinkName: "Open Your Heart", drinkType: "Hand Dripped", price: 4.50)

    @StateObject var drink2 = Coffee(itemNum: 2, drinkName: "French Toast Latte", drinkType: "Espresso", price: 5.00)
    
    //Create a var to track our total price!
    @State private var totalPrice = 0.0
    @State private var currentPrice = 0.0

    @State private var showPrice = false


    //Create a list to hold and iterate through your drinks
    @State private var coffeeList: [Coffee] = []
    
    //Create Function to be called when body is run that will add Coffee objects to coffeeList
    func addListItems() {
        coffeeList = [drink1, drink2]
    }
    
    func updateTotalPrice() {
        currentPrice = totalPrice
    }
    
    var body: some View {
        VStack {
            //Title of menu
            Text("SoDoI Coffee")
                .font(.system(size: 30))
                .bold()
            
            //Subtitle of menu
            Text("The Best Coffee in Berkeley (real)")
                .padding(.bottom, 15)
                .font(.system(size: 13))
                .italic()
            
            VStack {
                //Display the menu headers
                HStack {
                    Text("Drink Name")
                        .padding(.bottom, 10)
                    
                    Spacer()
                    
                    Text("Quantity")
                        .padding(.trailing, -10)
                        .padding(.bottom, 20)
                    
                }.padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 70))
                    .bold()
                
                //Display the coffees and their appropriate information
                ForEach(coffeeList) {i in
                    HStack {
                        VStack(alignment: .leading) {
                            //Format the price to a double containing 2 digits after the decimal point to display
                            var formattedPrice = String(format: "%.2f", i.price)
                            
                            Text(String(i.itemNum) + ". " + i.drinkName)
                            Text("    " + i.drinkType + ", $" + formattedPrice).italic()
                        } .padding(.bottom, 10)
                        
                        Spacer()
                        
                        //Decrement Buttom
                        Button("-", action: {
                            if (i.quantity > 0) {
                                i.quantity -=  1
                                totalPrice -= i.price
                            }
                        }).padding(.bottom, 20)
                        
                        VStack(alignment: .leading) {
                            Text(String(i.quantity))
                        } .padding(.bottom, 20)
                        
                        //Increment Buttom
                        Button("+", action: {
                            i.quantity +=  1
                            totalPrice += i.price
                        }) .padding(.bottom, 20)
                        
                    }.padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 70))
                }.padding(.bottom, 15)
                
                //Implement totalPrice displaying button
                VStack {
                    Button("Calculate Total Price", action: {
                        updateTotalPrice()
                        showPrice = true
                        
                    }).buttonStyle(.automatic)
                        .font(.system(size: 20))
                        .padding(.bottom, 5)
                        .bold()

                    let formattedTotalPrice = String(format: "%.2f", currentPrice)
                    
                    if showPrice {
                        Text("$" + formattedTotalPrice)
                    }
                }.padding(.top, 30)
            }
            
            Spacer()
            
        }.padding(.top, 55)
            .onAppear(perform: addListItems)
    }
}

// This code just generates the live content preview, feel free to delete it and build instead to preview your app!

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
