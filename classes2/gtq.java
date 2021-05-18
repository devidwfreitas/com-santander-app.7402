import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.santander.app.components.view.dropuplist.ListDropUp;

public class gtq implements View.OnTouchListener {
  public gtq(ListDropUp paramListDropUp) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
    if (!ListDropUp.a(this.a)) {
      ListDropUp.a(this.a, ListDropUp.b(this.a).getY());
      ListDropUp.a(this.a, true);
    } 
    switch (paramMotionEvent.getActionMasked()) {
      default:
        return true;
      case 1:
        if (!ListDropUp.c(this.a)) {
          this.a.a();
          return true;
        } 
        this.a.b();
        return true;
      case 2:
        break;
    } 
    ViewGroup.LayoutParams layoutParams = ListDropUp.d(this.a).getLayoutParams();
    layoutParams.height = (int)((ListDropUp.e(this.a)).heightPixels - paramMotionEvent.getRawY() - 50.0F);
    ListDropUp.d(this.a).setLayoutParams(layoutParams);
    float f = (float)(layoutParams.height / 1000.0D);
    ListDropUp.d(this.a).setAlpha(f);
    layoutParams = ListDropUp.f(this.a).getLayoutParams();
    layoutParams.height = (int)((ListDropUp.e(this.a)).heightPixels - paramMotionEvent.getRawY() - 50.0F);
    ListDropUp.f(this.a).setLayoutParams(layoutParams);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gtq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */