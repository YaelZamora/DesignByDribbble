//
//  ChatRow.swift
//  design
//
//  Created by MacMini on 09/05/23.
//

import SwiftUI

struct ChatRow: View {
    var index : Int
    let nombres = ["Yael Zamora", "Jerry Guzman", "Marco Perez", "Leo Jimenez", "Antonio Loza", "Yunhuen García", "Carla Lopez", "Beto Ortega", "Aaron Samuels", "Lalo Garcia", "Manuel Leal", "Gerardo Leal", "Carlos Lopez", "Alan Zamora", "Bety Moreno"]
    let mensajes = ["Que bueno volver a verte", "Ya casi llego", "Contestame", "¿Cómo estas?", "Creo que no podré ir", "Ya tengo el trabajo", "Mañana vemos bien", "Cómo te va?", "Creo que ya quedó", "No me parece lo mejor", "Tengo mucho sueño", "Tengo ya tu pedido", "Donde nos vemos?", "Que bella foto", "Que bien!"]
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: "https://picsum.photos/50")).frame(width: 50, height: 50).cornerRadius(25)
            VStack(alignment: .leading){
                Text(nombres[index]).foregroundColor(.white).bold().font(.title2)
                Text(mensajes[index]).foregroundColor(.gray).font(.callout)
            }
            Spacer()
            VStack{
                Text(Date.now.formatted(date: .omitted, time: .shortened)).foregroundColor(.gray)
                ZStack {
                    Circle().frame(width: 20).foregroundColor(Color(hex: 0xff9e4c5c, alpha: 1))
                    Text("2").foregroundColor(.white)
                }
            }
        }.listRowBackground(Color(hex: 0xff0d1318, alpha: 1))
    }
}

struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatRow(index: 0)
    }
}
