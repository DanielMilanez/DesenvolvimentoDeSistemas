public class Matematica {
    private int a,b,c,d;
    
    public Matematica(int a) {
        this.a = a;
    }

    public Matematica(int a, int b) {
        this.a = a;
        this.b = b;
    }

    public Matematica(int a, int b, int c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }

    public Matematica(int a, int b, int c, int d) {
        this.a = a;
        this.b = b;
        this.c = c;
        this.d = d;
    }

    public String parImpar(int a){
        
        String response = (this.getA() == 0 % 2) ? "Par":"Impar";

        return response;
    }

    public int soma(int a, int b){
        return a+b;
    }

    public int mediaNum(int a, int b, int c, int d) {
        return a+b+c+d/4;
    }

    public String mediaAluno(int a, int b){

        double mediaAl = a + b / 2;
        
        String responseMedia = (mediaAl == 7) ? "Aprovado":"Reprovado";

        return responseMedia;
    }

    public int getA() {
        return a;
    }

    public void setA(int a) {
        this.a = a;
    }

    public int getB() {
        return b;
    }

    public void setB(int b) {
        this.b = b;
    }

    public int getC() {
        return c;
    }

    public void setC(int c) {
        this.c = c;
    }

    public int getD() {
        return d;
    }

    public void setD(int d) {
        this.d = d;
    }

    
}
