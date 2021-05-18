package me.relex.circleindicator;

import android.content.Context;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import java.util.List;

public class SnackbarBehavior extends CoordinatorLayout.Behavior<CircleIndicator> {
  public SnackbarBehavior() {}
  
  public SnackbarBehavior(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  private float a(CoordinatorLayout paramCoordinatorLayout, CircleIndicator paramCircleIndicator) {
    float f = 0.0F;
    List<View> list = paramCoordinatorLayout.getDependencies((View)paramCircleIndicator);
    int j = list.size();
    int i;
    for (i = 0; i < j; i++) {
      View view = list.get(i);
      if (view instanceof android.support.design.widget.Snackbar.SnackbarLayout && paramCoordinatorLayout.doViewsOverlap((View)paramCircleIndicator, view))
        f = Math.min(f, ViewCompat.getTranslationY(view) - view.getHeight()); 
    } 
    return f;
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, CircleIndicator paramCircleIndicator, View paramView) {
    return paramView instanceof android.support.design.widget.Snackbar.SnackbarLayout;
  }
  
  public boolean b(CoordinatorLayout paramCoordinatorLayout, CircleIndicator paramCircleIndicator, View paramView) {
    paramCircleIndicator.setTranslationY(a(paramCoordinatorLayout, paramCircleIndicator));
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\me\relex\circleindicator\SnackbarBehavior.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */