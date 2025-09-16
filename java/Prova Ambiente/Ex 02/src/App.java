import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner input = new Scanner(System.in);

        System.out.println("1 - De 1 até 10");

        System.out.print("Escolha uma opção >> ");
        int escolha = input.nextInt();
        
        switch (escolha) {
            case 1:
                System.out.println("De 1 até 10 usando while");

                int numero = 0;

                while (numero <= 10) {
                    System.out.println(numero);
                    numero ++;
                }

                break;
            case 2:
                System.out.println("Calculo\n"
                + "Ps:Digite 0 quando quiser sair do programa");
                
                int numCalculo = 0;
                
                while (true) {

                    System.out.print(">> ");
                    int numeroSoma = input.nextInt();

                    numCalculo = numeroSoma+ numCalculo;

                    System.out.println("Resultado >> "+numCalculo);

                    if(numeroSoma == 0){
                        System.out.println("Programa encerrado");
                        break;
                    }
                }
                break;
            case 3:
                System.out.println("Tabuada");

                System.out.print("Valor >> ");
                int numTabuada = input.nextInt();

                for (int i = 0 ; i < 10; i++) {
                    System.out.format("%d x %d = %d %n", 
                            numTabuada, i , numTabuada*i);
                }

                break;
            case 4:
                /* 
                System.out.println("Fatoria");

                int resultado = 1;

                System.out.print("Valor >> ");
                int numFatoria = input.nextInt();

                for (int i = 1 ; i < numFatoria; i++) {
                    resultado *= numFatoria ;
                }                    

                System.out.println(resultado);

                break;
                 */
            case 5:
                System.out.println("Login while");

                final String userRoot = "java17";
                final String senhaRoot = "java17";

                while (true) {
                    System.out.print("Digite o usuario >> ");

                    String userString = input.next();
                    
                    System.out.print("Digite a senha >> ");

                    String senhaString = input.next();

                    if (userRoot.equals(userString) 
                    && senhaRoot.equals(senhaString))
                    {break;}
                }

                break;

            default:
                input.close();
                break;
        }
    }
}
