import android.view.View;
import android.view.ViewGroup;
import com.santander.app.components.view.CheckCardGroup;
import com.santander.app.components.view.CheckCardView;

public class gop implements ViewGroup.OnHierarchyChangeListener {
  public gop(CheckCardGroup paramCheckCardGroup) {}
  
  public void onChildViewAdded(View paramView1, View paramView2) {
    if (paramView1 == this.a && paramView2 instanceof CheckCardView) {
      CheckCardView checkCardView = (CheckCardView)paramView2;
      checkCardView.a = true;
      checkCardView.setOnCheckChangeListener(CheckCardGroup.a(this.a));
      if (CheckCardGroup.b(this.a).isEmpty())
        checkCardView.setChecked(true); 
      CheckCardGroup.b(this.a).add(checkCardView);
    } 
    if (CheckCardGroup.c(this.a) != null)
      CheckCardGroup.c(this.a).onChildViewAdded(paramView1, paramView2); 
  }
  
  public void onChildViewRemoved(View paramView1, View paramView2) {
    if (paramView1 == this.a && paramView2 instanceof CheckCardView) {
      CheckCardView checkCardView = (CheckCardView)paramView2;
      checkCardView.setOnCheckChangeListener(null);
      CheckCardGroup.b(this.a).remove(checkCardView);
    } 
    if (CheckCardGroup.c(this.a) != null)
      CheckCardGroup.c(this.a).onChildViewRemoved(paramView1, paramView2); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gop.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */