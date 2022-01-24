//
//  Tutorial1.swift
//  aFlor
//
//  Created by Bianca Maciel Matos on 20/01/22.
//

import SwiftUI
struct TutorialRow: View {
    
    var tutorial: TutorialModel
    
    var body: some View {
    HStack(alignment: .center) {
      HStack {
          Image(systemName: tutorial.icone)
          .font(.system(size: 35))
          .frame(width: 50)
          .foregroundColor(Color("AccentColor"))
          .padding()
        VStack(alignment: .leading) {
            Text(tutorial.categoria).bold()
            Text(tutorial.descricao)
            .foregroundColor(.secondary)
            .fixedSize(horizontal: false, vertical: true)
        }
      }.frame(width: 340, height: 100)
    }
  }
}
struct TutorialRow_Previews: PreviewProvider {
    static var tutorials = ModelData().tutorials
        static var previews: some View {
            TutorialRow(tutorial: tutorials[0])
                .previewLayout(.sizeThatFits)
                .padding(10)
        }
}
