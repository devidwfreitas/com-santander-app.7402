package android.support.v4.widget;

import android.util.Log;
import android.view.View;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

class SlidingPaneLayout$SlidingPanelLayoutImplJB extends SlidingPaneLayout$SlidingPanelLayoutImplBase {
  private Method mGetDisplayList;
  
  private Field mRecreateDisplayList;
  
  SlidingPaneLayout$SlidingPanelLayoutImplJB() {
    try {
      this.mGetDisplayList = View.class.getDeclaredMethod("getDisplayList", (Class[])null);
      try {
        this.mRecreateDisplayList = View.class.getDeclaredField("mRecreateDisplayList");
        this.mRecreateDisplayList.setAccessible(true);
        return;
      } catch (NoSuchFieldException noSuchFieldException) {
        Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", noSuchFieldException);
      } 
    } catch (NoSuchMethodException noSuchMethodException) {
      Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", noSuchMethodException);
      try {
        this.mRecreateDisplayList = View.class.getDeclaredField("mRecreateDisplayList");
        this.mRecreateDisplayList.setAccessible(true);
        return;
      } catch (NoSuchFieldException noSuchFieldException) {
        Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", noSuchFieldException);
      } 
    } 
  }
  
  public void invalidateChildRegion(SlidingPaneLayout paramSlidingPaneLayout, View paramView) {
    if (this.mGetDisplayList != null && this.mRecreateDisplayList != null) {
      try {
        this.mRecreateDisplayList.setBoolean(paramView, true);
        this.mGetDisplayList.invoke(paramView, (Object[])null);
      } catch (Exception exception) {
        Log.e("SlidingPaneLayout", "Error refreshing display list state", exception);
      } 
      super.invalidateChildRegion(paramSlidingPaneLayout, paramView);
      return;
    } 
    paramView.invalidate();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\SlidingPaneLayout$SlidingPanelLayoutImplJB.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */