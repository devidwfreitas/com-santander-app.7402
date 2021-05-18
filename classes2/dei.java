import com.google.android.gms.common.api.Status;

public class dei {
  public static void a(Status paramStatus, egw<Void> paramegw) {
    a(paramStatus, null, paramegw);
  }
  
  public static <TResult> void a(Status paramStatus, TResult paramTResult, egw<TResult> paramegw) {
    if (paramStatus.e()) {
      paramegw.a(paramTResult);
      return;
    } 
    paramegw.a((Exception)new cql(paramStatus));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dei.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */