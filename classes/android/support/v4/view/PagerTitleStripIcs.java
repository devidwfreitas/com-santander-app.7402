package android.support.v4.view;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.text.method.TransformationMethod;
import android.widget.TextView;

@TargetApi(14)
@RequiresApi(14)
class PagerTitleStripIcs {
  public static void setSingleLineAllCaps(TextView paramTextView) {
    paramTextView.setTransformationMethod((TransformationMethod)new PagerTitleStripIcs$SingleLineAllCapsTransform(paramTextView.getContext()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\PagerTitleStripIcs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */