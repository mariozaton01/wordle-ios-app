
import Foundation
import FirebaseFirestore

class TareasViewModel: ObservableObject {

    // REF: Actualizaciones en tiempo real: https://firebase.google.com/docs/firestore/query-data/listen
    // REF: Agregar un documento: https://firebase.google.com/docs/firestore/manage-data/add-data#add_a_document

    @Published var users = [User]()

    private var db = Firestore.firestore()

    func all() {
        db.collection("users").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("ERROR: No hay documentos")
                return
            }

            self.users = documents.map { (queryDocumentSnapshot) -> User in
                let data = queryDocumentSnapshot.data()
                let nombre = data["nombre"] as? String ?? ""
                return User(nombre: nombre)
            }
        }
    }

    func add(nombre: String) {
        db.collection("users").addDocument(data: ["nombre": nombre])
    }
}
