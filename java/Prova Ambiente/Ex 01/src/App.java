import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner input = new Scanner(System.in);
        
        System.out.println("1 - Somar\n2 - Media(de quatro valores)\n3 - Conversão de real para dolar\n4 - impar ou par");

        System.out.print("Escolha uma opção >> ");

        int decisao = input.nextInt();

        switch (decisao) {
            case 1:
                System.out.println("digite dois numeros");

                System.out.print("Valor de a >>> ");
    
                int x = input.nextInt();
    
                System.out.print("Valor de b >>> ");
    
                int y = input.nextInt();
    
                Matematica mat = new  Matematica(x, y);
            
                System.out.println(mat.soma(x, y));
                    
                break;
            
            case 2:
                System.out.println("Digite quatro valores.");

                System.out.print("Primeira nota: ");
                int numMedia1 = input.nextInt();
                
                System.out.print("Segunda nota: ");
                int numMedia2 = input.nextInt();
                
                System.out.println("Terceira nota: ");
                int numMedia3 = input.nextInt();
                
                System.out.println("Quarta nota: ");
                int numMedia4 = input.nextInt();
                
                Matematica matMedia = new Matematica(numMedia1, numMedia2, numMedia3, numMedia4);
                System.out.println(matMedia.mediaNum(numMedia1,
                                    numMedia2, numMedia3, numMedia4));
                break;
            
            case 3:
                System.out.println("Conversão de dolar: ");

                Double dolar = 5.41;

                System.out.println("Digite quantos reais queira converter >> ");

                Double real = input.nextDouble();

                System.out.format("Dolar do dia:%1.2f\nA conversão de %1.2f\nreais para dolar é de: %1.2f",
                 dolar,real,dolar*real);

                break;
            
            case 4:
                System.out.println("Programa impar par");

                System.out.print("Digite um numero: ");
                int numePar = input.nextInt();

                Matematica matImpar = new Matematica(numePar);

                System.out.println(matImpar.parImpar(numePar));

                break;
            
            case 5:
                System.out.println("Media de aluno");

                System.out.print("Digite a primeira nota: ");
                int notaMedia1 = input.nextInt();

                System.out.print("Digite a segunda nota: ");
                int notaMedia2 = input.nextInt();

                Matematica aluno = new Matematica(notaMedia1, notaMedia2);

                aluno.mediaAluno(notaMedia1, notaMedia2);
                
                break;
            case 6:
                System.out.println("Maior ou menor");

                System.out.print("Digite a primeiro numero: ");
                int valorMn1 = input.nextInt();

                System.out.print("Digite a segunda numero: ");
                int valorMn2 = input.nextInt();

                if (valorMn1 > valorMn2) {
                    System.out.format("O numero: %d e maior que o numero: %d", valorMn1, valorMn2);
                }else{
                    System.out.format("O numero: %d e maior que o numero: %d", valorMn2, valorMn1);
                }
                
                break;
            case 7:
                System.out.println("Maior ou menor");

                System.out.print("Digite um numero: ");
                int numVerif = input.nextInt();


                if (numVerif == 0) {
                    System.out.format("O numero: %d e zero", numVerif);
                
                }else if(numVerif > 0){
                    System.out.format("O numero: %d e positivo", numVerif);
                }else{
                    System.out.format("O numero: %d e negativo", numVerif);
                }
                break;
            case 8:
                System.out.println("Calculo de IMC");

                System.out.print("Digite seu peso: ");
                double peso = input.nextDouble();

                System.out.print("Digite seu peso: ");
                int altura = input.nextInt();
                
                double imc = peso/(Math.pow(altura, 2));
                
                System.out.format("Seu imc e: %f",imc);
                break;
            case 9:
                System.out.println("Ano bissexto");

                System.out.print("Digite um ano: ");
                int ano = input.nextInt();

                if (ano % 4 == 0 && (ano % 100 != 0 || ano % 400 == 0)) {
                    System.out.println("É um ano bissexto.");
                }else {
                    System.out.println("Não é um ano bissexto.");
                }
                break;

            case 10:
                final String userAdmin = "admin";
                final int senhaUser = 1234;
                
                System.out.println("Sitema de login");

                System.out.print("Digite o usuario: ");
                String usuario = input.next();

                System.out.println("Digite a senha: ");
                int senha = input.nextInt();

                if (userAdmin.equals(usuario) && senhaUser == senha){
                    System.out.println("Login realizado com sucesso!");

                } else {
                    System.out.println("Usuario ou senha incorretos! Tente novamente.");
                    
                }


                break;
            default:
                System.out.println("Programa encerrado");
                input.close();
                break;
        }

        input.close();

    }
}
