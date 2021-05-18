import android.content.Context;
import android.util.Log;
import java.util.HashMap;

final class alf implements bfr {
  alf(ala paramala, Context paramContext) {}
  
  public final void a() {
    if (this.b.getPackageName().equals("com.santander.app"))
      alb.d().a(new alg(Boolean.valueOf(false), "Outros_ErrInit", "onFirstRunning", null)); 
    this.a.a(alb.d());
  }
  
  public final void a(float paramFloat) {
    alb.d().a(new alg(Boolean.valueOf(true), "Outros_ValInit", "Sim " + String.valueOf(paramFloat), null));
    this.a.b(alb.d());
    this.a.a(null);
  }
  
  public final void a(int paramInt, float paramFloat) {
    alb.d().b("onValidateDnaFailure");
    alb.d().a(new alg(Boolean.valueOf(true), "Outros_ValInit", "Nao " + String.valueOf(paramInt) + "_" + String.valueOf(paramFloat), null));
    this.a.b(alb.d());
    this.a.a(null);
  }
  
  public final void a(Exception paramException) {
    paramException.printStackTrace();
    alb.f(paramException.getMessage());
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("log", paramException.getMessage());
    alb.d().a(new alg(Boolean.valueOf(false), "Outros_ErrInit", "onError", hashMap));
    this.a.b(alb.d());
    this.a.a(null);
  }
  
  public final void a(String paramString) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("log", paramString);
    alb.d().a(paramString);
    alb.d().a(new alg(Boolean.valueOf(false), "Outros_ErrInit", "testLog", hashMap));
    this.a.b(alb.d());
    Log.i("ID_TEST_LOG", paramString);
  }
  
  public final void b() {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\alf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */