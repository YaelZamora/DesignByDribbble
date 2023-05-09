//
//  SuperiorCard.swift
//  design
//
//  Created by MacMini on 09/05/23.
//

import SwiftUI

struct SuperiorCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Image(systemName: "magnifyingglass").font(.largeTitle).foregroundColor(.white)
                Spacer()
                Image(systemName: "square.and.pencil").font(.largeTitle).foregroundColor(.white)
            }
            VStack{
                //
            }.frame(height: 25)
            Text("Workspace").foregroundColor(.white)
            HStack{
                Text("Design and Marketing").foregroundColor(.white).bold().font(.title3)
                Spacer()
                Image(systemName: "chevron.down").padding()
                    .background(.thinMaterial)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
            Invitaciones()
        }.padding()
            .frame(width: 350, height: 300)
            .background(LinearGradient(
                gradient: Gradient(
                    colors: [
                        Color(hex: 0xff633194, alpha: 1),
                        Color(hex: 0xff9e4c5c, alpha: 1)
                    ]
                ),
                startPoint: .leading,
                endPoint: .trailing
            ))
            .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
    }
}

struct SuperiorCard_Previews: PreviewProvider {
    static var previews: some View {
        SuperiorCard()
    }
}
