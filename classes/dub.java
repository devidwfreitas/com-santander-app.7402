import com.google.android.gms.common.api.Status;

@Deprecated
public final class dub {
  public static final int a = 0;
  
  public static final int b = 1;
  
  public static final int c = 1000;
  
  public static final int d = 1001;
  
  public static final int e = 1002;
  
  public static int a(int paramInt) {
    return ((paramInt >= 0 && paramInt <= 1) || (1000 <= paramInt && paramInt <= 1002)) ? paramInt : 1;
  }
  
  public static Status b(int paramInt) {
    switch (paramInt) {
      default:
        return new Status(paramInt);
      case 1:
        break;
    } 
    paramInt = 13;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\dub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */