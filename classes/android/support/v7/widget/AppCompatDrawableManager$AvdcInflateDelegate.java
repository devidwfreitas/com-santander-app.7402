package android.support.v7.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.graphics.drawable.AnimatedVectorDrawableCompat;
import android.util.AttributeSet;
import android.util.Log;
import org.xmlpull.v1.XmlPullParser;

@TargetApi(11)
@RequiresApi(11)
class AppCompatDrawableManager$AvdcInflateDelegate implements AppCompatDrawableManager$InflateDelegate {
  @SuppressLint({"NewApi"})
  public Drawable createFromXmlInner(@NonNull Context paramContext, @NonNull XmlPullParser paramXmlPullParser, @NonNull AttributeSet paramAttributeSet, @Nullable Resources.Theme paramTheme) {
    try {
      return (Drawable)AnimatedVectorDrawableCompat.createFromXmlInner(paramContext, paramContext.getResources(), paramXmlPullParser, paramAttributeSet, paramTheme);
    } catch (Exception exception) {
      Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", exception);
      return null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\AppCompatDrawableManager$AvdcInflateDelegate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */