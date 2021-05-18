import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.graphics.drawable.VectorDrawableCompat;
import android.support.v4.content.ContextCompat;
import android.util.Base64;
import com.santander.app.MinhaConta;

public final class jou {
  @ColorInt
  public static int a(@ColorRes int paramInt1, @ColorInt int paramInt2) {
    Context context = MinhaConta.b();
    try {
      return ContextCompat.getColor(context, paramInt1);
    } catch (android.content.res.Resources.NotFoundException notFoundException) {
      return paramInt2;
    } 
  }
  
  @ColorInt
  public static int a(String paramString, @ColorInt int paramInt) {
    try {
      return Color.parseColor(paramString);
    } catch (IllegalArgumentException illegalArgumentException) {
      return paramInt;
    } 
  }
  
  public static Bitmap a(@DrawableRes int paramInt) {
    Drawable drawable = ContextCompat.getDrawable(MinhaConta.b(), paramInt);
    if (drawable instanceof BitmapDrawable)
      return ((BitmapDrawable)drawable).getBitmap(); 
    if (drawable instanceof VectorDrawableCompat)
      return a((VectorDrawableCompat)drawable); 
    if (drawable instanceof VectorDrawable)
      return a((VectorDrawable)drawable); 
    throw new IllegalArgumentException("Unsupported drawable type");
  }
  
  @TargetApi(21)
  private static Bitmap a(VectorDrawable paramVectorDrawable) {
    Bitmap bitmap = Bitmap.createBitmap(paramVectorDrawable.getIntrinsicWidth(), paramVectorDrawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
    Canvas canvas = new Canvas(bitmap);
    paramVectorDrawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
    paramVectorDrawable.draw(canvas);
    return bitmap;
  }
  
  private static Bitmap a(VectorDrawableCompat paramVectorDrawableCompat) {
    Bitmap bitmap = Bitmap.createBitmap(paramVectorDrawableCompat.getIntrinsicWidth(), paramVectorDrawableCompat.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
    Canvas canvas = new Canvas(bitmap);
    paramVectorDrawableCompat.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
    paramVectorDrawableCompat.draw(canvas);
    return bitmap;
  }
  
  public static Bitmap a(String paramString) {
    try {
      byte[] arrayOfByte = Base64.decode(paramString, 0);
      return BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
    } catch (Exception exception) {
      return null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jou.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */