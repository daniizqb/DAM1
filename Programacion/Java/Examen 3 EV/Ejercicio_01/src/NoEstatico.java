
public class NoEstatico
{
    public String getCharString(int num,char car)
    {
        String output = "";
        
        for (int i = 0; i < num; i++) {
            output = output + car;
        }
        
        return output;
    }
}
