import java.io.Serializable;

public class ajs extends ajb implements Serializable {
  public static String c(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    String[] arrayOfString = paramString.split("[-]");
    stringBuilder.append(arrayOfString[2]);
    stringBuilder.append("/");
    stringBuilder.append(arrayOfString[1]);
    stringBuilder.append("/");
    stringBuilder.append(arrayOfString[0]);
    return stringBuilder.toString();
  }
  
  public static String d(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    String[] arrayOfString = paramString.split("[-]");
    stringBuilder.append(arrayOfString[2]);
    stringBuilder.append("/");
    stringBuilder.append(arrayOfString[1]);
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ajs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */