import android.view.MotionEvent;
import android.view.View;
import com.santander.app.ParcelamentoFacturaActivity;

public class fjx implements View.OnTouchListener {
  public fjx(ParcelamentoFacturaActivity paramParcelamentoFacturaActivity) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
    if (paramMotionEvent.getAction() == 2) {
      if (paramMotionEvent.getRawX() > paramMotionEvent.getY() + 1.0F || paramMotionEvent.getRawX() < paramMotionEvent.getY() - 1.0F) {
        paramView.getParent().requestDisallowInterceptTouchEvent(true);
        return false;
      } 
      paramView.getParent().requestDisallowInterceptTouchEvent(false);
      return false;
    } 
    paramView.getParent().requestDisallowInterceptTouchEvent(false);
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fjx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */