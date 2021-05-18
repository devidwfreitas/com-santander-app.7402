package android.support.v7.view;

import android.view.InflateException;
import android.view.MenuItem;
import java.lang.reflect.Method;

class SupportMenuInflater$InflatedOnMenuItemClickListener implements MenuItem.OnMenuItemClickListener {
  private static final Class<?>[] PARAM_TYPES = new Class[] { MenuItem.class };
  
  private Method mMethod;
  
  private Object mRealOwner;
  
  public SupportMenuInflater$InflatedOnMenuItemClickListener(Object paramObject, String paramString) {
    this.mRealOwner = paramObject;
    Class<?> clazz = paramObject.getClass();
    try {
      this.mMethod = clazz.getMethod(paramString, PARAM_TYPES);
      return;
    } catch (Exception exception) {
      InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + paramString + " in class " + clazz.getName());
      inflateException.initCause(exception);
      throw inflateException;
    } 
  }
  
  public boolean onMenuItemClick(MenuItem paramMenuItem) {
    try {
      if (this.mMethod.getReturnType() == boolean.class)
        return ((Boolean)this.mMethod.invoke(this.mRealOwner, new Object[] { paramMenuItem })).booleanValue(); 
      this.mMethod.invoke(this.mRealOwner, new Object[] { paramMenuItem });
      return true;
    } catch (Exception exception) {
      throw new RuntimeException(exception);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\SupportMenuInflater$InflatedOnMenuItemClickListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */