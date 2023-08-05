import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner Entrada = new Scanner(System.in);
        String cadena ;

        int contadorvocales = 0;
        int contadorconsonantes = 0;
        int contadorespacios = 0;

        System.out.println("Ingrese un cadena ");
        cadena = Entrada.nextLine();

        cadena = cadena.toLowerCase();

        for (int i = 0; i < cadena.length() ; i++) {
          char ch = cadena.charAt(i);
          if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' ||ch == 'u' )
          {
              contadorvocales++;
          }
          if (ch == ' ')
          {
              contadorespacios++;
          }
          else
          {
              contadorconsonantes++;
          }
        }

        System.out.println("numero de vocales : " + contadorvocales);
        System.out.println("numero de consonantes : " + (contadorconsonantes - contadorvocales));
        System.out.println("numero de espacios : " + contadorespacios);


    }
}