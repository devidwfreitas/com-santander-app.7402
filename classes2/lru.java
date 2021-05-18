import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;

public class lru implements kxa {
  public lru(SinisterDetailActivity paramSinisterDetailActivity) {}
  
  public void a() {
    SinisterDetailActivity.e(this.a, true);
    this.a.finish();
  }
  
  public void a(Object paramObject) {
    SinisterDetailActivity.e(this.a, true);
    if (paramObject != null && paramObject instanceof is) {
      paramObject = paramObject;
      paramObject = mys.a().<kvj>a(paramObject.c().toString(), kvj.class);
      if (paramObject.a() != null && !paramObject.a().booleanValue()) {
        this.a.b.setState(aor.CONTENT);
        SinisterDetailActivity.a(this.a, lyp.a(SinisterDetailActivity.k(this.a).v()));
        SinisterDetailActivity.l(this.a).show(this.a.getSupportFragmentManager(), "review-dialog");
        return;
      } 
      this.a.finish();
      return;
    } 
    this.a.finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lru.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */