import android.app.Activity;
import java.util.ArrayList;

public class gya extends gne<gxd, Void, gxc> {
  private gkv a;
  
  private Activity b;
  
  public gya(gkv paramgkv, Activity paramActivity) {
    this.a = paramgkv;
    this.b = paramActivity;
  }
  
  protected gxc a(gxd... paramVarArgs) {
    return (new gog<gxd, gxc>()).a(paramVarArgs[0], gxc.class, has.W(), "listarCampanhas", "return", true);
  }
  
  public void a() {}
  
  protected void a(gxc paramgxc) {
    if (paramgxc == null || paramgxc.a() == null || paramgxc.a().size() < 1) {
      paramgxc = new gxc();
      paramgxc.a(new ArrayList());
      this.a.a(paramgxc);
      return;
    } 
    this.a.a(paramgxc);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gya.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */