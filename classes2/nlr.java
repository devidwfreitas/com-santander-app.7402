import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;

public final class nlr {
  private static final int a = 1073741824;
  
  public static <T> List<T> a(int paramInt) {
    return (paramInt == 0) ? Collections.emptyList() : new ArrayList<T>(paramInt);
  }
  
  public static boolean a(List<?> paramList) {
    if (paramList.size() >= 2) {
      HashSet hashSet = new HashSet(paramList);
      if (paramList.size() != hashSet.size())
        return true; 
    } 
    return false;
  }
  
  static <T> HashSet<T> b(int paramInt) {
    return new HashSet<T>(d(paramInt));
  }
  
  static <K, V> LinkedHashMap<K, V> c(int paramInt) {
    return new LinkedHashMap<K, V>(d(paramInt));
  }
  
  private static int d(int paramInt) {
    return (paramInt < 3) ? (paramInt + 1) : ((paramInt < 1073741824) ? (int)(paramInt / 0.75F + 1.0F) : Integer.MAX_VALUE);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nlr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */