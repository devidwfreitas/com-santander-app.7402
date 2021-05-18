import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;

public final class crb {
  public static <T, E extends crf<T>> ArrayList<T> a(cqx<E> paramcqx) {
    null = new ArrayList(paramcqx.a());
    try {
      Iterator<E> iterator = paramcqx.iterator();
    } finally {
      paramcqx.close();
    } 
    paramcqx.close();
    return (ArrayList<T>)SYNTHETIC_LOCAL_VARIABLE_1;
  }
  
  public static boolean b(cqx<?> paramcqx) {
    Bundle bundle = paramcqx.d();
    return (bundle != null && bundle.getString("next_page_token") != null);
  }
  
  public static boolean c(cqx<?> paramcqx) {
    Bundle bundle = paramcqx.d();
    return (bundle != null && bundle.getString("prev_page_token") != null);
  }
  
  public static boolean d(cqx<?> paramcqx) {
    return (paramcqx != null && paramcqx.a() > 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\crb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */