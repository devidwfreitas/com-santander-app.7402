package android.support.design.widget;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import java.lang.reflect.Method;

class DrawableUtils {
  private static final String LOG_TAG = "DrawableUtils";
  
  private static Method sSetConstantStateMethod;
  
  private static boolean sSetConstantStateMethodFetched;
  
  static boolean setContainerConstantState(DrawableContainer paramDrawableContainer, Drawable.ConstantState paramConstantState) {
    return setContainerConstantStateV9(paramDrawableContainer, paramConstantState);
  }
  
  private static boolean setContainerConstantStateV9(DrawableContainer paramDrawableContainer, Drawable.ConstantState paramConstantState) {
    // Byte code:
    //   0: getstatic android/support/design/widget/DrawableUtils.sSetConstantStateMethodFetched : Z
    //   3: ifne -> 36
    //   6: ldc android/graphics/drawable/DrawableContainer
    //   8: ldc 'setConstantState'
    //   10: iconst_1
    //   11: anewarray java/lang/Class
    //   14: dup
    //   15: iconst_0
    //   16: ldc android/graphics/drawable/DrawableContainer$DrawableContainerState
    //   18: aastore
    //   19: invokevirtual getDeclaredMethod : (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   22: putstatic android/support/design/widget/DrawableUtils.sSetConstantStateMethod : Ljava/lang/reflect/Method;
    //   25: getstatic android/support/design/widget/DrawableUtils.sSetConstantStateMethod : Ljava/lang/reflect/Method;
    //   28: iconst_1
    //   29: invokevirtual setAccessible : (Z)V
    //   32: iconst_1
    //   33: putstatic android/support/design/widget/DrawableUtils.sSetConstantStateMethodFetched : Z
    //   36: getstatic android/support/design/widget/DrawableUtils.sSetConstantStateMethod : Ljava/lang/reflect/Method;
    //   39: ifnull -> 81
    //   42: getstatic android/support/design/widget/DrawableUtils.sSetConstantStateMethod : Ljava/lang/reflect/Method;
    //   45: aload_0
    //   46: iconst_1
    //   47: anewarray java/lang/Object
    //   50: dup
    //   51: iconst_0
    //   52: aload_1
    //   53: aastore
    //   54: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   57: pop
    //   58: iconst_1
    //   59: ireturn
    //   60: astore_2
    //   61: ldc 'DrawableUtils'
    //   63: ldc 'Could not fetch setConstantState(). Oh well.'
    //   65: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   68: pop
    //   69: goto -> 32
    //   72: astore_0
    //   73: ldc 'DrawableUtils'
    //   75: ldc 'Could not invoke setConstantState(). Oh well.'
    //   77: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   80: pop
    //   81: iconst_0
    //   82: ireturn
    // Exception table:
    //   from	to	target	type
    //   6	32	60	java/lang/NoSuchMethodException
    //   42	58	72	java/lang/Exception
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\DrawableUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */