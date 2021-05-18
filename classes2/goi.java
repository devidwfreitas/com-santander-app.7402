import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

public class goi implements View.OnClickListener {
  private Activity a = null;
  
  private View b = null;
  
  private boolean c = false;
  
  public goi(Activity paramActivity) {
    this.a = paramActivity;
    this.b = paramActivity.getLayoutInflater().inflate(2130969029, null);
    ((ImageView)this.b.findViewById(2131757219)).setOnClickListener(this);
  }
  
  public void a() {
    if (!this.c) {
      ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
      this.a.addContentView(this.b, layoutParams);
      this.c = true;
    } 
  }
  
  public void b() {
    ((ViewGroup)this.b.getParent()).removeView(this.b);
    this.c = false;
  }
  
  public void onClick(View paramView) {
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\goi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */