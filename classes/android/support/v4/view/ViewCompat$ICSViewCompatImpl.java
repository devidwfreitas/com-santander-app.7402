package android.support.v4.view;

import android.support.annotation.Nullable;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.lang.reflect.Field;
import java.util.WeakHashMap;

class ViewCompat$ICSViewCompatImpl extends ViewCompat$HCViewCompatImpl {
  static boolean accessibilityDelegateCheckFailed = false;
  
  static Field mAccessibilityDelegateField;
  
  public ViewPropertyAnimatorCompat animate(View paramView) {
    if (this.mViewPropertyAnimatorCompatMap == null)
      this.mViewPropertyAnimatorCompatMap = new WeakHashMap<View, ViewPropertyAnimatorCompat>(); 
    ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = this.mViewPropertyAnimatorCompatMap.get(paramView);
    ViewPropertyAnimatorCompat viewPropertyAnimatorCompat1 = viewPropertyAnimatorCompat2;
    if (viewPropertyAnimatorCompat2 == null) {
      viewPropertyAnimatorCompat1 = new ViewPropertyAnimatorCompat(paramView);
      this.mViewPropertyAnimatorCompatMap.put(paramView, viewPropertyAnimatorCompat1);
    } 
    return viewPropertyAnimatorCompat1;
  }
  
  public boolean canScrollHorizontally(View paramView, int paramInt) {
    return ViewCompatICS.canScrollHorizontally(paramView, paramInt);
  }
  
  public boolean canScrollVertically(View paramView, int paramInt) {
    return ViewCompatICS.canScrollVertically(paramView, paramInt);
  }
  
  public boolean hasAccessibilityDelegate(View paramView) {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: getstatic android/support/v4/view/ViewCompat$ICSViewCompatImpl.accessibilityDelegateCheckFailed : Z
    //   5: ifeq -> 10
    //   8: iconst_0
    //   9: ireturn
    //   10: getstatic android/support/v4/view/ViewCompat$ICSViewCompatImpl.mAccessibilityDelegateField : Ljava/lang/reflect/Field;
    //   13: ifnonnull -> 33
    //   16: ldc android/view/View
    //   18: ldc 'mAccessibilityDelegate'
    //   20: invokevirtual getDeclaredField : (Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   23: putstatic android/support/v4/view/ViewCompat$ICSViewCompatImpl.mAccessibilityDelegateField : Ljava/lang/reflect/Field;
    //   26: getstatic android/support/v4/view/ViewCompat$ICSViewCompatImpl.mAccessibilityDelegateField : Ljava/lang/reflect/Field;
    //   29: iconst_1
    //   30: invokevirtual setAccessible : (Z)V
    //   33: getstatic android/support/v4/view/ViewCompat$ICSViewCompatImpl.mAccessibilityDelegateField : Ljava/lang/reflect/Field;
    //   36: aload_1
    //   37: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   40: astore_1
    //   41: aload_1
    //   42: ifnull -> 54
    //   45: iload_2
    //   46: ireturn
    //   47: astore_1
    //   48: iconst_1
    //   49: putstatic android/support/v4/view/ViewCompat$ICSViewCompatImpl.accessibilityDelegateCheckFailed : Z
    //   52: iconst_0
    //   53: ireturn
    //   54: iconst_0
    //   55: istore_2
    //   56: goto -> 45
    //   59: astore_1
    //   60: iconst_1
    //   61: putstatic android/support/v4/view/ViewCompat$ICSViewCompatImpl.accessibilityDelegateCheckFailed : Z
    //   64: iconst_0
    //   65: ireturn
    // Exception table:
    //   from	to	target	type
    //   16	33	47	java/lang/Throwable
    //   33	41	59	java/lang/Throwable
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent) {
    ViewCompatICS.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {
    ViewCompatICS.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat.getInfo());
  }
  
  public void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent) {
    ViewCompatICS.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public void setAccessibilityDelegate(View paramView, @Nullable AccessibilityDelegateCompat paramAccessibilityDelegateCompat) {
    Object object;
    if (paramAccessibilityDelegateCompat == null) {
      paramAccessibilityDelegateCompat = null;
    } else {
      object = paramAccessibilityDelegateCompat.getBridge();
    } 
    ViewCompatICS.setAccessibilityDelegate(paramView, object);
  }
  
  public void setFitsSystemWindows(View paramView, boolean paramBoolean) {
    ViewCompatICS.setFitsSystemWindows(paramView, paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewCompat$ICSViewCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */