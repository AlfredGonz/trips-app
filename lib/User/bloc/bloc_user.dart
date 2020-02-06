import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/User/repository/auth_repository.dart';

class UserBloc implements Bloc {

  final _authrepository = AuthRepository();

  //Flujo de datos  - Streams
  //Stream de Firebase

  Stream<FirebaseUser> streamFirebase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;

  //Casos de uso
  //1. SignIn a la aplicacion Google
  Future<FirebaseUser> signIn(){
    return _authrepository.signInFirebase();
  }

  //2. SignOut
  signOut() {
    _authrepository.signOut();
  }

  @override
  void dispose() {
  }

}