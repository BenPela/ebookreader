

import SwiftUI

struct BookListView: View {
    
    @EnvironmentObject var model:BookModel
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading) {
                // Book List
                ScrollView {
                    
                    LazyVStack(alignment: .leading){
                        HStack{
                            Text("My Library")
                                .font(.title)
                                .fontWeight(.bold)
                            
                            Spacer()
                            //Settings Button
                            NavigationLink(
                                destination: SettingView(),
                                label: {
                                    Image(systemName: "gear")
                                })
                            
                        }
                        .padding(.horizontal)
                        //Book Cards
                        ForEach (model.books) { book in
                            NavigationLink(
                                destination: BookDetailView(faveStatus: book.isFavourite, book: book),
                                label: {
                                    BookPreview(book: book)
                                })
                            
                        }
                    }
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
        //add environtment to preview
            .environmentObject(BookModel())
    }
}
