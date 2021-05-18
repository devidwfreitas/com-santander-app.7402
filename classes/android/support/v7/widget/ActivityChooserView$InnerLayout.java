package android.support.v7.widget;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.util.AttributeSet;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ActivityChooserView$InnerLayout extends LinearLayoutCompat {
  private static final int[] TINT_ATTRS = new int[] { 16842964 };
  
  public ActivityChooserView$InnerLayout(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(paramContext, paramAttributeSet, TINT_ATTRS);
    setBackgroundDrawable(tintTypedArray.getDrawable(0));
    tintTypedArray.recycle();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActivityChooserView$InnerLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */