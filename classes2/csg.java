import android.support.annotation.Nullable;
import java.util.Arrays;

public final class csg {
  public static int a(Object... paramVarArgs) {
    return Arrays.hashCode(paramVarArgs);
  }
  
  public static csi a(Object paramObject) {
    return new csi(paramObject, null);
  }
  
  public static boolean a(@Nullable Object paramObject1, @Nullable Object paramObject2) {
    return (paramObject1 == paramObject2 || (paramObject1 != null && paramObject1.equals(paramObject2)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\csg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */