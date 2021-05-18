package android.support.v7.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class AppCompatViewInflater$DeclaredOnClickListener implements View.OnClickListener {
  private final View mHostView;
  
  private final String mMethodName;
  
  private Context mResolvedContext;
  
  private Method mResolvedMethod;
  
  public AppCompatViewInflater$DeclaredOnClickListener(@NonNull View paramView, @NonNull String paramString) {
    this.mHostView = paramView;
    this.mMethodName = paramString;
  }
  
  @NonNull
  private void resolveMethod(@Nullable Context paramContext, @NonNull String paramString) {
    while (paramContext != null) {
      try {
        if (!paramContext.isRestricted()) {
          Method method = paramContext.getClass().getMethod(this.mMethodName, new Class[] { View.class });
          if (method != null) {
            this.mResolvedMethod = method;
            this.mResolvedContext = paramContext;
            return;
          } 
        } 
      } catch (NoSuchMethodException noSuchMethodException) {}
      if (paramContext instanceof ContextWrapper) {
        paramContext = ((ContextWrapper)paramContext).getBaseContext();
        continue;
      } 
      paramContext = null;
    } 
    int i = this.mHostView.getId();
    if (i == -1) {
      String str1 = "";
      throw new IllegalStateException("Could not find method " + this.mMethodName + "(View) in a parent or ancestor Context for android:onClick " + "attribute defined on view " + this.mHostView.getClass() + str1);
    } 
    String str = " with id '" + this.mHostView.getContext().getResources().getResourceEntryName(i) + "'";
    throw new IllegalStateException("Could not find method " + this.mMethodName + "(View) in a parent or ancestor Context for android:onClick " + "attribute defined on view " + this.mHostView.getClass() + str);
  }
  
  public void onClick(@NonNull View paramView) {
    if (this.mResolvedMethod == null)
      resolveMethod(this.mHostView.getContext(), this.mMethodName); 
    try {
      this.mResolvedMethod.invoke(this.mResolvedContext, new Object[] { paramView });
      return;
    } catch (IllegalAccessException illegalAccessException) {
      throw new IllegalStateException("Could not execute non-public method for android:onClick", illegalAccessException);
    } catch (InvocationTargetException invocationTargetException) {
      throw new IllegalStateException("Could not execute method for android:onClick", invocationTargetException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatViewInflater$DeclaredOnClickListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */