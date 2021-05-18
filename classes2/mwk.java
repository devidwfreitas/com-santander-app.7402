import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.santander.app.transfergolden.service.TransferGoldenService;

public class mwk implements View.OnTouchListener {
  private int b;
  
  private int c;
  
  private float d;
  
  private float e;
  
  private float f;
  
  private boolean g;
  
  public mwk(TransferGoldenService paramTransferGoldenService) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
    int i;
    int j;
    int k;
    boolean bool1;
    null = false;
    boolean bool2 = true;
    switch (paramMotionEvent.getAction()) {
      default:
        return false;
      case 0:
        this.b = (TransferGoldenService.f(this.a)).y;
        this.d = paramMotionEvent.getRawY();
        this.c = (TransferGoldenService.f(this.a)).x;
        this.e = paramMotionEvent.getRawX();
        bool1 = bool2;
        if (this.f == 0.0F) {
          this.f = paramView.getX();
          return true;
        } 
        return bool1;
      case 2:
        i = this.b;
        j = (int)(paramMotionEvent.getRawY() - this.d);
        k = this.c + (int)(paramMotionEvent.getRawX() - this.e);
        (TransferGoldenService.f(this.a)).y = i + j;
        if (k >= this.f) {
          paramView.setX(k);
          if (k >= this.f + 30.0F)
            bool1 = true; 
          this.g = bool1;
        } 
        TransferGoldenService.g(this.a).updateViewLayout(paramView, (ViewGroup.LayoutParams)TransferGoldenService.f(this.a));
        TransferGoldenService.h(this.a);
        return true;
      case 1:
        break;
    } 
    if (this.g) {
      TransferGoldenService.i(this.a).run();
      return true;
    } 
    if (paramMotionEvent.getEventTime() - paramMotionEvent.getDownTime() <= 200L) {
      TransferGoldenService.j(this.a);
      return true;
    } 
    TransferGoldenService.a(this.a, this.f).start();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mwk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */