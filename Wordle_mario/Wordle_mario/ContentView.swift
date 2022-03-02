//
//  ContentView.swift
//  Wordle_mario
//
//  Created by  on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    //En la base de datos crear una tabla de palabras para asignarlas a los arrays de palabras de manera aleatoria
    
    @State var BDpalabra = "GATOS"
    
    
    @State var arrayPalabras = [["","","","",""],["","","","",""],["","","","",""],["","","","",""],["","","","",""],["","","","",""]]
    
    @State var contadorPalabra = 0
    @State var contadorLetra = 0
    @State var user = ""
    @State var popup = false
    var body: some View {
        if popup{
            VStack{
                Spacer()
                Text("Has ganado")
                Spacer()
                Button(action: {reiniciarJuego()}, label: {Text("Volver a empezar")})
                Spacer()
            }
            
        }else{
            
        
        VStack{
            
            HStack{
                Spacer()
                TextField("Username", text: $user).frame(width: 100)
                Button(action: {guardarUser()}, label: {Text("Iniciar")})
                Spacer()
            }
            
            
            HStack{
                Text("WORDLE")
            }
            
            VStack{
                ForEach (0..<6, id : \.self){ row in
                    HStack{
                        ForEach (0..<5, id: \.self){ col in
                            Text(arrayPalabras[row][col])
                                .multilineTextAlignment(.center)
                                .padding()
                                .background(Rectangle().fill(cambiarColor(letra: arrayPalabras[row][col],posicionPalabra: row,posicionLetra: col)).aspectRatio(1.0, contentMode: .fit).shadow(radius: 3))
                        }
                    }
                }
                
            }
            .padding(.init(top: 20, leading: 20, bottom: 20, trailing: 20))
            VStack{
                VStack{
                    HStack{
                        Button(action: {
                            escribirLetra(letra: "Q")
                        }, label: {
                            Text("Q")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "W")
                        }, label: {
                            Text("W")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "E")
                        }, label: {
                            Text("E")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 45.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "R")
                        }, label: {
                            Text("R")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "T")
                        }, label: {
                            Text("T")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "Y")
                        }, label: {
                            Text("Y")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "U")
                        }, label: {
                            Text("U")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        
                        Button(action: {
                            escribirLetra(letra: "I")
                        }, label: {
                            Text("I")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "O")
                        }, label: {
                            Text("O")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "P")
                        }, label: {
                            Text("P")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        
                        
                        
                    }.frame(width: 420.0)
                    HStack{
                        
                        Button(action: {
                            escribirLetra(letra: "A")
                        }, label: {
                            Text("A")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "S")
                        }, label: {
                            Text("S")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "D")
                        }, label: {
                            Text("D")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "F")
                        }, label: {
                            Text("F")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "G")
                        }, label: {
                            Text("G")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "H")
                        }, label: {
                            Text("H")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "J")
                        }, label: {
                            Text("J")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "K")
                        }, label: {
                            Text("K")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "L")
                        }, label: {
                            Text("L")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        
                        
                        
                    }.frame(width: 420.0)
                    HStack{
                        
                        Button(action: {
                            ValidarPalabra()                        }, label: {
                            Text("Enter")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 50.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "Z")
                        }, label: {
                            Text("Z")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "X")
                        }, label: {
                            Text("X")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "C")
                        }, label: {
                            Text("C")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "V")
                        }, label: {
                            Text("V")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "B")
                        }, label: {
                            Text("B")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "N")
                        }, label: {
                            Text("N")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 30.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            escribirLetra(letra: "M")
                        }, label: {
                            Text("M")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 35.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        Button(action: {
                            borrarCaracter()
                        }, label: {
                            Text("<-")
                        })
                            .multilineTextAlignment(.center)
                            .frame(width: 55.0, height: 50.0)
                            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white).shadow(radius: 3))
                        
                        
                        
                    }.frame(width: 420.0)
                }.padding([.top, .leading, .trailing],20.0)
                
            }
            .padding(.horizontal, 10.0)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 300.0, alignment: .bottom )
                
                
            
        }
        .padding(0.0)
        //.padding(10.0)
        
        }
        
    }
    func escribirLetra(letra: String){
        if user != ""{
            
            if contadorLetra <= 3  && contadorLetra >= 0{
            arrayPalabras[contadorPalabra][contadorLetra] = letra
            print(contadorLetra)
            contadorLetra += 1
            }
            else{
                if contadorLetra == 4  && contadorLetra >= 0 && arrayPalabras[contadorPalabra][contadorLetra] == ""
                {
                    arrayPalabras[contadorPalabra][contadorLetra] = letra
                    print(contadorLetra)
                }
            }
        }
        
        
        
    }
    
    func borrarCaracter(){
        if arrayPalabras[contadorPalabra][contadorLetra] == "" && contadorLetra > 0{
            contadorLetra -= 1
        }
        
        if contadorLetra <= 4 && contadorLetra > 0{
            print("borrar",contadorLetra)
            
            arrayPalabras[contadorPalabra][contadorLetra] = ""
            contadorLetra -= 1
            
        }
        else{
            if contadorLetra == 0{
                print("borrar",contadorLetra)
                arrayPalabras[contadorPalabra][contadorLetra] = ""
            }
            
        }
    }
    func ValidarPalabra(){
        if contadorLetra > 5 {
            contadorLetra = contadorLetra - 1
        }
        if contadorPalabra <= 5 {
            if contadorLetra == 4 && arrayPalabras[contadorPalabra][contadorLetra] != "" {
                contadorLetra = 0
                validarTerminado()
                contadorPalabra += 1
                print("palabra",contadorPalabra)
                print("letra",contadorLetra)
            }
            else{
                print("La palabra no ha sido terminada")
                print(contadorLetra)
            }
        }
        
    }
    func cambiarColor(letra: String, posicionPalabra: Int, posicionLetra: Int) ->Color{
        var palabra = Array(BDpalabra) //.map {String($0)}
        var colhor = Color.white
        
        if contadorPalabra > posicionPalabra {
            for i in 0..<palabra.count {
                    
                if letra == String(palabra[i]) && posicionLetra == i {
                    return  Color.green
                }
                
                if letra == String(palabra[i]) && posicionLetra != i {
                    return Color.yellow
                }
                else{
                    if letra != String(palabra[i]) && posicionLetra != i{
                        colhor = Color.gray
                    
                    }
                }
                
            }
        }
        return colhor
    }
    func guardarUser() -> Void {
        //guardar user en bd, si el user no existe no agregar,sino sumarle a el la puntuacion.
        print("cosas pasan")
    }
    func validarTerminado(){
        var palabra = arrayPalabras[contadorPalabra]
        let palab = palabra[0]+palabra[1]+palabra[2]+palabra[3]+palabra[4]
        print(palab)
        if BDpalabra == palab{
            popup = true
        }
        else{
            popup = false
        }
            
        print(popup)
    
    }
    func reiniciarJuego(){
        contadorPalabra = 0
        contadorLetra = 0
        user = ""
        popup = false
        for i in 0..<arrayPalabras.count{
            for b in 0..<arrayPalabras[i].count{
                arrayPalabras[i][b] = ""
            }
        }
        
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}
