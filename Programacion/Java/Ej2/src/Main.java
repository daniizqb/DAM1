import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        short anio = 0;
        byte mes = 0, dias = 0;
        short [] meses = {31,28,31,30,31,30,31,31,30,31,30,31};


        do {
            System.out.println("Anio");
            anio = Short.parseShort(sc.nextLine());
        } while (anio < 1950 || anio > 2100);

        do {
            System.out.println("Mes");
            mes = Byte.parseByte(sc.nextLine());
        } while (mes < 1 || mes > 12);

        short max = meses[mes-1];
        if (mes == 2 && anio % 4 == 0)
            max++;
        do {
            System.out.println("dia");
            dias = Byte.parseByte(sc.nextLine());
        } while (dias < 1 || dias > max);


        short dia = dias;
        switch (mes) {
            case 12:
                dia += 31;
            case 11:
                dia += 30;
            case 10:
                dia += 31;
            case 9:
                dia += 30;
            case 8:
                dia += 31;
            case 7:
                dia += 31;
            case 6:
                dia += 30;
            case 5:
                dia += 31;
            case 4:
                dia += 30;
            case 3:
                dia += 31;
            case 2:
                dia += anio % 4 == 0 ? 29 : 28;
            case 1:
                break;
        }

        System.out.println("El dia del anio de la fecha " + dias + "/" + (mes < 10 ? "0" + mes : mes) + "/" + anio + " es " + dia);
        /*if (mes > 1) {
            dia += 31;
            if (mes > 2) {
                dia += anio % 4 == 0 ? 29 : 28;
                if (mes > 3) {
                    dia += 31;
                    if (mes > 4) {
                        dia += 30;
                        if (mes > 5) {
                            dia += 31;
                            if (mes > 6) {
                                dia += 30;
                                if (mes > 7) {
                                    dia += 31;
                                    if (mes > 8) {
                                        dia += 31;
                                        if (mes > 9) {
                                            dia += 30;
                                            if (mes > 10) {
                                                dia += 31;
                                                if (mes > 11) {
                                                    dia += 30;
                                                    if (mes > 12)
                                                        System.out.println("Mes invalido");
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        System.out.println("El dia del anio de la fecha " + dias + "/" + (mes < 10 ? "0" + mes : mes) + "/" + anio + " es " + dia);*/
    }
}
