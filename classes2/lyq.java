import java.util.ArrayList;
import java.util.Arrays;

class lyq implements kxa {
  lyq(lyp paramlyp) {}
  
  public void a() {
    if (!this.a.isVisible())
      return; 
    lyp.c(this.a).setState(aor.ERROR);
    this.a.dismiss();
  }
  
  public void a(Object paramObject) {
    if (this.a.isVisible())
      try {
        if (paramObject instanceof is) {
          paramObject = ((is)paramObject).c().getJSONArray("data");
          lyp.a(this.a, new ArrayList(Arrays.asList((Object[])mys.a().<kvh[]>a(paramObject.toString(), (Class)kvh[].class))));
          lyp.a(this.a);
          lyp.b(this.a);
          lyp.c(this.a).setState(aor.CONTENT);
          return;
        } 
        return;
      } catch (Exception exception) {
        exception.printStackTrace();
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lyq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */