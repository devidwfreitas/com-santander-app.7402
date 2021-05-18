import android.text.TextUtils;
import android.view.View;

class mtz implements View.OnFocusChangeListener {
  mtz(mtx parammtx) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean) {
    if (paramBoolean) {
      String str = mtx.b(this.a).getText().toString();
      if (!TextUtils.isEmpty(str) && str.contains("*")) {
        mtx.b(this.a).setText("");
        mtx.a(this.a).g();
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mtz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */