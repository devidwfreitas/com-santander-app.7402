import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.v4.content.ContextCompat;
import android.util.TypedValue;
import java.util.Arrays;

public class mfd {
  public static int a(@ColorInt int paramInt1, int paramInt2) {
    return paramInt2 << 24 | 0xFFFFFF & paramInt1;
  }
  
  public static int a(Context paramContext) {
    TypedValue typedValue = new TypedValue();
    paramContext.getTheme().resolveAttribute(2130772068, typedValue, true);
    return typedValue.resourceId;
  }
  
  public static Drawable a(@ColorInt int paramInt1, @ColorInt int paramInt2, int paramInt3) {
    return (Drawable)((Build.VERSION.SDK_INT >= 21) ? new RippleDrawable(ColorStateList.valueOf(paramInt2), (Drawable)new ColorDrawable(paramInt1), b(paramInt1, paramInt3)) : c(paramInt1, paramInt2));
  }
  
  public static StateListDrawable a(Context paramContext, @ColorInt int paramInt1, int paramInt2, boolean paramBoolean) {
    StateListDrawable stateListDrawable = a(paramContext, paramInt1, paramBoolean);
    ColorDrawable colorDrawable = new ColorDrawable(a(paramInt1, paramInt2));
    stateListDrawable.addState(new int[] { 16842919 }, (Drawable)colorDrawable);
    return stateListDrawable;
  }
  
  public static StateListDrawable a(Context paramContext, @ColorInt int paramInt, boolean paramBoolean) {
    StateListDrawable stateListDrawable = new StateListDrawable();
    ColorDrawable colorDrawable = new ColorDrawable(paramInt);
    stateListDrawable.addState(new int[] { 16842913 }, (Drawable)colorDrawable);
    Drawable drawable = ContextCompat.getDrawable(paramContext, a(paramContext));
    stateListDrawable.addState(new int[0], drawable);
    if (paramBoolean) {
      paramInt = paramContext.getResources().getInteger(17694720);
      stateListDrawable.setEnterFadeDuration(paramInt);
      stateListDrawable.setExitFadeDuration(paramInt);
    } 
    return stateListDrawable;
  }
  
  private static Drawable b(int paramInt1, int paramInt2) {
    float[] arrayOfFloat = new float[8];
    Arrays.fill(arrayOfFloat, paramInt2);
    ShapeDrawable shapeDrawable = new ShapeDrawable((Shape)new RoundRectShape(arrayOfFloat, null, null));
    shapeDrawable.getPaint().setColor(paramInt1);
    return (Drawable)shapeDrawable;
  }
  
  private static StateListDrawable c(int paramInt1, int paramInt2) {
    StateListDrawable stateListDrawable = new StateListDrawable();
    ColorDrawable colorDrawable = new ColorDrawable(paramInt2);
    stateListDrawable.addState(new int[] { 16842919 }, (Drawable)colorDrawable);
    colorDrawable = new ColorDrawable(paramInt2);
    stateListDrawable.addState(new int[] { 16842908 }, (Drawable)colorDrawable);
    colorDrawable = new ColorDrawable(paramInt2);
    stateListDrawable.addState(new int[] { 16843518 }, (Drawable)colorDrawable);
    colorDrawable = new ColorDrawable(paramInt1);
    stateListDrawable.addState(new int[0], (Drawable)colorDrawable);
    return stateListDrawable;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mfd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */