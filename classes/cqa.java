import android.os.Looper;
import com.google.android.gms.common.api.Status;

public final class cqa {
  public static <R extends cqg> cpx<R> a(R paramR) {
    csp.a(paramR, "Result must not be null");
    cqd<cqg> cqd = new cqd<cqg>(null);
    cqd.a((cqg)paramR);
    return (cpx<R>)new ddt(cqd);
  }
  
  public static cpy<Status> a() {
    dee dee = new dee(Looper.getMainLooper());
    dee.a();
    return dee;
  }
  
  public static cpy<Status> a(Status paramStatus) {
    csp.a(paramStatus, "Result must not be null");
    dee dee = new dee(Looper.getMainLooper());
    dee.a(paramStatus);
    return dee;
  }
  
  public static cpy<Status> a(Status paramStatus, cpt paramcpt) {
    csp.a(paramStatus, "Result must not be null");
    dee dee = new dee(paramcpt);
    dee.a(paramStatus);
    return dee;
  }
  
  public static <R extends cqg> cpy<R> a(R paramR, cpt paramcpt) {
    csp.a(paramR, "Result must not be null");
    if (!paramR.a().e()) {
      boolean bool1 = true;
      csp.b(bool1, "Status code must not be SUCCESS");
      cqc = new cqc<R>(paramcpt, paramR);
      cqc.a(paramR);
      return cqc;
    } 
    boolean bool = false;
    csp.b(bool, "Status code must not be SUCCESS");
    cqc<R> cqc = new cqc<R>((cpt)cqc, paramR);
    cqc.a(paramR);
    return cqc;
  }
  
  public static <R extends cqg> cpx<R> b(R paramR, cpt paramcpt) {
    csp.a(paramR, "Result must not be null");
    cqd<cqg> cqd = new cqd<cqg>(paramcpt);
    cqd.a((cqg)paramR);
    return (cpx<R>)new ddt(cqd);
  }
  
  public static <R extends cqg> cpy<R> b(R paramR) {
    csp.a(paramR, "Result must not be null");
    if (paramR.a().h() == 16) {
      boolean bool1 = true;
      csp.b(bool1, "Status code must be CommonStatusCodes.CANCELED");
      cqb = new cqb<R>(paramR);
      cqb.a();
      return cqb;
    } 
    boolean bool = false;
    csp.b(bool, "Status code must be CommonStatusCodes.CANCELED");
    cqb<R> cqb = new cqb<R>((R)cqb);
    cqb.a();
    return cqb;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cqa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */