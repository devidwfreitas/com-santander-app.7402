package android.support.v7.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.graphics.drawable.VectorDrawableCompat;
import android.util.AttributeSet;
import android.util.Log;
import org.xmlpull.v1.XmlPullParser;

class AppCompatDrawableManager$VdcInflateDelegate implements AppCompatDrawableManager$InflateDelegate {
  @SuppressLint({"NewApi"})
  public Drawable createFromXmlInner(@NonNull Context paramContext, @NonNull XmlPullParser paramXmlPullParser, @NonNull AttributeSet paramAttributeSet, @Nullable Resources.Theme paramTheme) {
    try {
      return (Drawable)VectorDrawableCompat.createFromXmlInner(paramContext.getResources(), paramXmlPullParser, paramAttributeSet, paramTheme);
    } catch (Exception exception) {
      Log.e("VdcInflateDelegate", "Exception while inflating <vector>", exception);
      return null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\AppCompatDrawableManager$VdcInflateDelegate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */