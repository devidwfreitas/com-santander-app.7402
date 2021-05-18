import java.util.ArrayList;
import java.util.Arrays;

public class kof {
  @eks(a = "number")
  private String a;
  
  @eks(a = "product")
  private String b;
  
  @eks(a = "assistance")
  private String c;
  
  public static String a(String paramString1, String paramString2, String paramString3) {
    for (kof kof1 : new ArrayList(Arrays.asList((Object[])(new ejm()).a(paramString1, kof[].class)))) {
      if (kof1.b.equals(paramString2) && kof1.c.equals(paramString3))
        return kof1.a; 
    } 
    return "";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kof.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */