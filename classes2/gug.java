import android.view.View;
import com.santander.app.components.view.scrollcolumnlayout.ScrollColumnLayout;

public class gug implements View.OnClickListener {
  public gug(ScrollColumnLayout paramScrollColumnLayout, int paramInt) {}
  
  public void onClick(View paramView) {
    if (ScrollColumnLayout.a(this.b) != null)
      ScrollColumnLayout.a(this.b).a(ScrollColumnLayout.b(this.b), paramView, this.a); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gug.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */