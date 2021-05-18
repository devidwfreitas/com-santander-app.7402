package android.support.v4.view.accessibility;

import android.os.Parcelable;
import android.view.View;
import java.util.List;

interface AccessibilityRecordCompat$AccessibilityRecordImpl {
  int getAddedCount(Object paramObject);
  
  CharSequence getBeforeText(Object paramObject);
  
  CharSequence getClassName(Object paramObject);
  
  CharSequence getContentDescription(Object paramObject);
  
  int getCurrentItemIndex(Object paramObject);
  
  int getFromIndex(Object paramObject);
  
  int getItemCount(Object paramObject);
  
  int getMaxScrollX(Object paramObject);
  
  int getMaxScrollY(Object paramObject);
  
  Parcelable getParcelableData(Object paramObject);
  
  int getRemovedCount(Object paramObject);
  
  int getScrollX(Object paramObject);
  
  int getScrollY(Object paramObject);
  
  AccessibilityNodeInfoCompat getSource(Object paramObject);
  
  List<CharSequence> getText(Object paramObject);
  
  int getToIndex(Object paramObject);
  
  int getWindowId(Object paramObject);
  
  boolean isChecked(Object paramObject);
  
  boolean isEnabled(Object paramObject);
  
  boolean isFullScreen(Object paramObject);
  
  boolean isPassword(Object paramObject);
  
  boolean isScrollable(Object paramObject);
  
  Object obtain();
  
  Object obtain(Object paramObject);
  
  void recycle(Object paramObject);
  
  void setAddedCount(Object paramObject, int paramInt);
  
  void setBeforeText(Object paramObject, CharSequence paramCharSequence);
  
  void setChecked(Object paramObject, boolean paramBoolean);
  
  void setClassName(Object paramObject, CharSequence paramCharSequence);
  
  void setContentDescription(Object paramObject, CharSequence paramCharSequence);
  
  void setCurrentItemIndex(Object paramObject, int paramInt);
  
  void setEnabled(Object paramObject, boolean paramBoolean);
  
  void setFromIndex(Object paramObject, int paramInt);
  
  void setFullScreen(Object paramObject, boolean paramBoolean);
  
  void setItemCount(Object paramObject, int paramInt);
  
  void setMaxScrollX(Object paramObject, int paramInt);
  
  void setMaxScrollY(Object paramObject, int paramInt);
  
  void setParcelableData(Object paramObject, Parcelable paramParcelable);
  
  void setPassword(Object paramObject, boolean paramBoolean);
  
  void setRemovedCount(Object paramObject, int paramInt);
  
  void setScrollX(Object paramObject, int paramInt);
  
  void setScrollY(Object paramObject, int paramInt);
  
  void setScrollable(Object paramObject, boolean paramBoolean);
  
  void setSource(Object paramObject, View paramView);
  
  void setSource(Object paramObject, View paramView, int paramInt);
  
  void setToIndex(Object paramObject, int paramInt);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityRecordCompat$AccessibilityRecordImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */