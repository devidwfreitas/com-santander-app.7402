import android.content.Intent;
import android.view.View;

public class khc {
  private kgj a;
  
  private kgw b;
  
  public khc(kgw paramkgw, Intent paramIntent) {
    this.b = paramkgw;
    this.a = (kgj)paramIntent.getSerializableExtra("request");
  }
  
  public void a() {
    if (this.a != null)
      this.b.a(this.a.a); 
  }
  
  public View.OnClickListener b() {
    return new khd(this);
  }
  
  public View.OnClickListener c() {
    return new khe(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\khc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */