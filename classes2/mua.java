import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;

class mua implements TextView.OnEditorActionListener {
  mua(mtx parammtx) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent) {
    if (paramInt == 6) {
      mtx.a(this.a, (View)paramTextView);
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mua.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */