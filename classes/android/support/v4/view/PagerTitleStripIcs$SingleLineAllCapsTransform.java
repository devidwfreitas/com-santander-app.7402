package android.support.v4.view;

import android.content.Context;
import android.text.method.SingleLineTransformationMethod;
import android.view.View;
import java.util.Locale;

class PagerTitleStripIcs$SingleLineAllCapsTransform extends SingleLineTransformationMethod {
  private static final String TAG = "SingleLineAllCapsTransform";
  
  private Locale mLocale;
  
  public PagerTitleStripIcs$SingleLineAllCapsTransform(Context paramContext) {
    this.mLocale = (paramContext.getResources().getConfiguration()).locale;
  }
  
  public CharSequence getTransformation(CharSequence paramCharSequence, View paramView) {
    paramCharSequence = super.getTransformation(paramCharSequence, paramView);
    return (paramCharSequence != null) ? paramCharSequence.toString().toUpperCase(this.mLocale) : null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\PagerTitleStripIcs$SingleLineAllCapsTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */