import android.content.res.Resources;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewTreeObserver;

final class aoo {
  public static float a(float paramFloat) {
    return paramFloat / (Resources.getSystem().getDisplayMetrics()).density;
  }
  
  public static int a(int paramInt) {
    switch (paramInt) {
      default:
        return paramInt;
      case 8388611:
        return 8388613;
      case 48:
        return 80;
      case 8388613:
        return 8388611;
      case 80:
        break;
    } 
    return 48;
  }
  
  public static RectF a(View paramView) {
    int[] arrayOfInt = new int[2];
    paramView.getLocationOnScreen(arrayOfInt);
    return new RectF(arrayOfInt[0], arrayOfInt[1], (arrayOfInt[0] + paramView.getMeasuredWidth()), (arrayOfInt[1] + paramView.getMeasuredHeight()));
  }
  
  public static void a(View paramView, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener) {
    paramView.getViewTreeObserver().removeOnGlobalLayoutListener(paramOnGlobalLayoutListener);
  }
  
  public static float b(float paramFloat) {
    return (Resources.getSystem().getDisplayMetrics()).density * paramFloat;
  }
  
  public static RectF b(View paramView) {
    int[] arrayOfInt = new int[2];
    paramView.getLocationInWindow(arrayOfInt);
    return new RectF(arrayOfInt[0], arrayOfInt[1], (arrayOfInt[0] + paramView.getMeasuredWidth()), (arrayOfInt[1] + paramView.getMeasuredHeight()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aoo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */