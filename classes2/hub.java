import android.os.Handler;
import android.support.v4.widget.NestedScrollView;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

public class hub implements NestedScrollView.OnScrollChangeListener {
  private List<hud> a = new ArrayList<hud>();
  
  private int b = 0;
  
  private int c = 1000;
  
  private boolean d = true;
  
  public hub(View... paramVarArgs) {
    int j = paramVarArgs.length;
    for (int i = 0; i < j; i++) {
      View view = paramVarArgs[i];
      this.a.add(new hud(view, null));
      view.setVisibility(0);
    } 
  }
  
  private void a(int paramInt) {
    if (this.b == this.a.size())
      return; 
    hud hud = this.a.get(this.b);
    hud.a(hud, paramInt);
    b();
    (new Handler()).postDelayed(new huc(this, hud), this.c);
  }
  
  private void b(int paramInt) {
    if (this.b != 0 && paramInt <= hud.b((hud)this.a.get(this.b - 1))) {
      for (paramInt = this.b - 1; paramInt < this.a.size(); paramInt++)
        hud.a(this.a.get(paramInt)).setVisibility(8); 
      this.b--;
      return;
    } 
  }
  
  public void a() {
    this.d = true;
  }
  
  public void b() {
    this.d = false;
  }
  
  public void onScrollChange(NestedScrollView paramNestedScrollView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (!this.d)
      return; 
    if (paramInt2 >= paramNestedScrollView.getChildAt(0).getMeasuredHeight() - paramNestedScrollView.getMeasuredHeight()) {
      a(paramInt2);
      return;
    } 
    b(paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */