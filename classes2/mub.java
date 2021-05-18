import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;

class mub implements TextView.OnEditorActionListener {
  mub(mtx parammtx) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent) {
    if (paramInt == 6) {
      mtx.a(this.a, (View)paramTextView);
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */