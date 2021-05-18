import android.view.View;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;

public class amn implements View.OnLayoutChangeListener {
  public amn(SantanderDropDownView paramSantanderDropDownView) {}
  
  public void onLayoutChange(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8) {
    this.a.removeOnLayoutChangeListener(this);
    SantanderDropDownView.g(this.a);
    SantanderDropDownView.h(this.a);
    if (this.a.isInEditMode())
      return; 
    if (SantanderDropDownView.i(this.a) != -1) {
      this.a.a.a(SantanderDropDownView.i(this.a));
      SantanderDropDownView.a(this.a, -1);
    } else {
      this.a.a.a();
    } 
    SantanderDropDownView.a(this.a, true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\amn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */