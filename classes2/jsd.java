import android.text.TextUtils;
import java.util.List;

public class jsd implements jsc {
  private jsn a;
  
  private jsf b;
  
  private List<jrv> c;
  
  private String d;
  
  public jsd(jsn paramjsn) {
    this.a = paramjsn;
    this.b = new jsh();
    this.d = c();
  }
  
  private String c() {
    String str = d();
    return !TextUtils.isEmpty(str) ? str : this.b.a();
  }
  
  private String d() {
    return (this.a.getIntent() != null) ? this.a.getIntent().getStringExtra("extra_segment") : "";
  }
  
  private void e() {
    String str = this.d;
    byte b = -1;
    switch (str.hashCode()) {
      default:
        switch (b) {
          default:
            this.a.a();
            return;
          case 0:
            this.a.b();
            return;
          case 1:
            break;
        } 
        break;
      case 2642:
        if (str.equals("SE"))
          b = 0; 
      case 2562:
        if (str.equals("PR"))
          b = 1; 
    } 
    this.a.c();
  }
  
  public void a() {
    e();
    this.b.a(this.d, new jse(this));
  }
  
  public void a(int paramInt) {
    if (this.c.isEmpty())
      return; 
    if (((jrv)this.c.get(paramInt)).c() != 0) {
      this.a.a(((jrv)this.c.get(paramInt)).c());
    } else {
      this.a.a("");
    } 
    c(paramInt);
    b(paramInt);
  }
  
  public int b() {
    return 0;
  }
  
  public void b(int paramInt) {}
  
  public void c(int paramInt) {
    if (this.c.isEmpty())
      return; 
    if (paramInt == this.c.size() - 1) {
      this.a.c(((jrv)this.c.get(paramInt)).b());
      return;
    } 
    this.a.b(((jrv)this.c.get(paramInt)).b());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jsd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */