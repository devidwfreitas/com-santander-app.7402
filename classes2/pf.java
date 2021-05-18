import android.view.View;
import android.widget.EditText;

class pf implements View.OnFocusChangeListener {
  pf(pc parampc) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean) {
    pc.a(this.a, (EditText)paramView, paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\pf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */