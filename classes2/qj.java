import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;

class qj implements TextView.OnEditorActionListener {
  qj(pc parampc) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent) {
    if ((paramKeyEvent != null && paramKeyEvent.getKeyCode() == 66) || paramInt == 5)
      pc.a(this.a, (View)pc.G(this.a)); 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\qj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */