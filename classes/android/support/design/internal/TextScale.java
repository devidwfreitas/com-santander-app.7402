package android.support.design.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.support.transition.Transition;
import android.support.transition.TransitionValues;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.Map;

@TargetApi(14)
@RequiresApi(14)
public class TextScale extends Transition {
  private static final String PROPNAME_SCALE = "android:textscale:scale";
  
  private void captureValues(TransitionValues paramTransitionValues) {
    if (paramTransitionValues.view instanceof TextView) {
      TextView textView = (TextView)paramTransitionValues.view;
      paramTransitionValues.values.put("android:textscale:scale", Float.valueOf(textView.getScaleX()));
    } 
  }
  
  public void captureEndValues(TransitionValues paramTransitionValues) {
    captureValues(paramTransitionValues);
  }
  
  public void captureStartValues(TransitionValues paramTransitionValues) {
    captureValues(paramTransitionValues);
  }
  
  public Animator createAnimator(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2) {
    float f1;
    float f2 = 1.0F;
    if (paramTransitionValues1 == null || paramTransitionValues2 == null || !(paramTransitionValues1.view instanceof TextView) || !(paramTransitionValues2.view instanceof TextView))
      return null; 
    TextView textView = (TextView)paramTransitionValues2.view;
    Map map1 = paramTransitionValues1.values;
    Map map2 = paramTransitionValues2.values;
    if (map1.get("android:textscale:scale") != null) {
      f1 = ((Float)map1.get("android:textscale:scale")).floatValue();
    } else {
      f1 = 1.0F;
    } 
    if (map2.get("android:textscale:scale") != null)
      f2 = ((Float)map2.get("android:textscale:scale")).floatValue(); 
    if (f1 == f2)
      return null; 
    ValueAnimator valueAnimator = ValueAnimator.ofFloat(new float[] { f1, f2 });
    valueAnimator.addUpdateListener(new TextScale$1(this, textView));
    return (Animator)valueAnimator;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\internal\TextScale.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */