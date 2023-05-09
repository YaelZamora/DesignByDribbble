//
//  ChatTab.swift
//  design
//
//  Created by MacMini on 09/05/23.
//

import SwiftUI

struct ChatTab: View {
    var body: some View {
        VStack {
            SuperiorCard()
            List{
                Section(header: Text("Dialogs").foregroundColor(.white).font(.largeTitle).bold()){
                    ForEach(0..<15){ index in
                        NavigationLink{
                            //
                        } label: {
                            ChatRow(index: index)
                        }
                    }.listRowBackground(Color(hex: 0xff0d1318, alpha: 1))
                }
            }.scrollContentBackground(.hidden)
            Spacer()
        }.ignoresSafeArea()
    }
}

struct ChatTab_Previews: PreviewProvider {
    static var previews: some View {
        ChatTab()
    }
}
