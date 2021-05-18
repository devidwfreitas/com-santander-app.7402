import android.support.annotation.Nullable;
import com.google.firebase.iid.FirebaseInstanceId;

@Deprecated
public class eir {
  private final FirebaseInstanceId a;
  
  private eir(FirebaseInstanceId paramFirebaseInstanceId) {
    this.a = paramFirebaseInstanceId;
  }
  
  public static eir a() {
    return new eir(FirebaseInstanceId.a());
  }
  
  public String b() {
    return this.a.c();
  }
  
  @Nullable
  public String c() {
    return this.a.f();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\eir.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */