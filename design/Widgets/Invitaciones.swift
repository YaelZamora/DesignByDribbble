//
//  Invitaciones.swift
//  design
//
//  Created by MacMini on 09/05/23.
//

import SwiftUI

struct Invitaciones: View {
    var body: some View {
        HStack{
            HStack{
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(0..<10) {index in
                            AsyncImage(url: URL(string: "https://picsum.photos/40"))
                                .frame(width: 40, height: 40)
                                .cornerRadius(20)
                        }
                    }
                }
            }.frame(width: 220, height: 50)
            Spacer()
            Button {
                //
            } label: {
                Text("Invite").foregroundColor(.black).padding(.vertical, 10).padding(.horizontal, 20).background().cornerRadius(10)
            }
        }
    }
}

struct Invitaciones_Previews: PreviewProvider {
    static var previews: some View {
        Invitaciones()
    }
}
