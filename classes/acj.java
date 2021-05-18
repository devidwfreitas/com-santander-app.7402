import java.util.Collection;
import java.util.Map;

public class acj {
  public static boolean a(String paramString) {
    return (paramString == null || paramString.isEmpty());
  }
  
  public static boolean a(Collection<?> paramCollection) {
    return (paramCollection == null || paramCollection.isEmpty());
  }
  
  public static boolean a(Map<?, ?> paramMap) {
    return (paramMap == null || paramMap.isEmpty());
  }
  
  public static boolean a(int[] paramArrayOfint) {
    return (paramArrayOfint == null || paramArrayOfint.length == 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\acj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */