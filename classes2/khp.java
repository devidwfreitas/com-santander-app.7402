import android.content.Intent;
import android.widget.TabHost;
import java.util.HashMap;

public class khp {
  private khk a;
  
  private fvn b;
  
  private String c = "RecargaTelefoneActivity";
  
  public khp(khk paramkhk) {
    this.a = paramkhk;
  }
  
  public TabHost.OnTabChangeListener a() {
    return new khq(this);
  }
  
  public void a(Intent paramIntent) {
    HashMap hashMap = (HashMap)paramIntent.getSerializableExtra("dadosOferta");
    if (hashMap != null)
      this.b = (fvn)hashMap.get("dadosRecarga"); 
    if (this.b != null) {
      this.a.a(1);
      return;
    } 
    this.a.a();
  }
  
  public kgu b() {
    return new khr(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\khp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */