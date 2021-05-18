import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

public class nfe {
  private Activity a = null;
  
  private View b = null;
  
  private boolean c = false;
  
  public nfe(Activity paramActivity, String paramString, View paramView) {
    this.a = paramActivity;
    this.b = paramActivity.getLayoutInflater().inflate(2130969524, null);
    TextView textView = (TextView)this.b.findViewById(2131756525);
    ((LinearLayout)this.b.findViewById(2131759612)).addView(paramView);
    textView.setText(paramString);
  }
  
  public nfe(Activity paramActivity, String paramString, View paramView, int paramInt) {
    this.a = paramActivity;
    this.b = paramActivity.getLayoutInflater().inflate(paramInt, null);
    TextView textView = (TextView)this.b.findViewById(2131756525);
    ((LinearLayout)this.b.findViewById(2131759612)).addView(paramView);
    textView.setText(paramString);
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
  
  public boolean c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nfe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */