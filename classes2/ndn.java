import android.content.Context;
import android.os.Handler;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

public class ndn implements ndm {
  private Context a;
  
  private nbz b;
  
  private List<gyv> c;
  
  private nde d;
  
  private Handler e = new Handler();
  
  public ndn(Context paramContext, nbz paramnbz) {
    this.a = paramContext;
    this.b = paramnbz;
    if (miq.C().f().k() == null) {
      this.c = (new ndz()).a(paramContext);
    } else {
      this.c = new ArrayList<gyv>();
      this.c.add((new ndz()).a(paramContext, miq.C().f().k()));
    } 
    this.d = new nde(paramContext, this.c);
  }
  
  private void b(View paramView, int paramInt) {
    gyv gyv = this.c.get(paramInt);
    String str = (new ndz()).a(gyv);
    long l = (new ndz()).b(gyv);
    this.b.a(paramView, paramInt, str, l);
    this.e.postDelayed(new ndo(this, paramView, paramInt), l);
  }
  
  public nde a() {
    return this.d;
  }
  
  public void a(View paramView, int paramInt) {
    if (paramView.findViewById(2131756161).getVisibility() == 0) {
      this.b.hideTokenContainer(paramView);
      return;
    } 
    this.b.a();
    this.b.showTokenContainer(paramView);
    b(paramView, paramInt);
  }
  
  public void b() {
    if (this.c.size() == 1)
      this.b.b(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ndn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */