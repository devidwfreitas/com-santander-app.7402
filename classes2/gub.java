import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

class gub implements View.OnTouchListener {
  gub(gtz paramgtz) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
    gtz.a(this.a, gtz.a(this.a).a() + gtz.b(this.a).getHeight());
    gtz.b(this.a, 0);
    if (gtz.c(this.a))
      gtz.b(this.a, gtz.d(this.a).getHeight()); 
    gtz.c(this.a, (int)paramMotionEvent.getRawY() - gtz.e(this.a));
    ViewGroup.LayoutParams layoutParams = gtz.f(this.a).getLayoutParams();
    switch (paramMotionEvent.getAction()) {
      default:
        return true;
      case 2:
        if (gtz.g(this.a) < gtz.h(this.a)) {
          layoutParams.height = gtz.g(this.a);
          gtz.f(this.a).setLayoutParams(layoutParams);
        } 
        if (gtz.g(this.a) > gtz.i(this.a)) {
          gtz.a(this.a, false);
          gtz.d(this.a).setVisibility(4);
        } 
        gtz.d(this.a, gtz.j(this.a) + 1);
        Log.v("COUNT_MOVE", String.valueOf(gtz.j(this.a)));
        Log.v("ACTION_MOVE", String.valueOf(gtz.g(this.a)));
      case 1:
        if (gtz.j(this.a) > 20) {
          if (gtz.g(this.a) < gtz.i(this.a)) {
            gtz.k(this.a);
          } else {
            gtz.l(this.a);
          } 
        } else if (gtz.m(this.a)) {
          gtz.k(this.a);
        } else {
          gtz.d(this.a).setVisibility(4);
          gtz.a(this.a, false);
          gtz.l(this.a);
        } 
        gtz.d(this.a, 0);
        Log.v("ACTION_UP", String.valueOf(gtz.g(this.a)));
      case 0:
        break;
    } 
    Log.v("ACTION_DOWN", String.valueOf(gtz.g(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */