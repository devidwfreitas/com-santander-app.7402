import android.support.annotation.NonNull;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

public class mes {
  private static final AtomicLong a = new AtomicLong(9000000000000000000L);
  
  public static <T extends mds> List<T> a(@NonNull List<T> paramList) {
    int j = paramList.size();
    for (int i = 0; i < j; i++)
      a((mds)paramList.get(i)); 
    return paramList;
  }
  
  public static <T extends mds> T a(@NonNull T paramT) {
    if (paramT.j() == -1L)
      paramT.a(a.incrementAndGet()); 
    return paramT;
  }
  
  public static <T extends mds> T[] a(@NonNull T... paramVarArgs) {
    int j = paramVarArgs.length;
    for (int i = 0; i < j; i++)
      a(paramVarArgs[i]); 
    return paramVarArgs;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mes.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */