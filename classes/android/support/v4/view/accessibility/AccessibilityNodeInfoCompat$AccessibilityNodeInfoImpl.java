package android.support.v4.view.accessibility;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import java.util.List;

interface AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl {
  void addAction(Object paramObject, int paramInt);
  
  void addAction(Object paramObject1, Object paramObject2);
  
  void addChild(Object paramObject, View paramView);
  
  void addChild(Object paramObject, View paramView, int paramInt);
  
  boolean canOpenPopup(Object paramObject);
  
  List<Object> findAccessibilityNodeInfosByText(Object paramObject, String paramString);
  
  List<Object> findAccessibilityNodeInfosByViewId(Object paramObject, String paramString);
  
  Object findFocus(Object paramObject, int paramInt);
  
  Object focusSearch(Object paramObject, int paramInt);
  
  int getAccessibilityActionId(Object paramObject);
  
  CharSequence getAccessibilityActionLabel(Object paramObject);
  
  Object getActionContextClick();
  
  List<Object> getActionList(Object paramObject);
  
  Object getActionScrollDown();
  
  Object getActionScrollLeft();
  
  Object getActionScrollRight();
  
  Object getActionScrollToPosition();
  
  Object getActionScrollUp();
  
  Object getActionSetProgress();
  
  Object getActionShowOnScreen();
  
  int getActions(Object paramObject);
  
  void getBoundsInParent(Object paramObject, Rect paramRect);
  
  void getBoundsInScreen(Object paramObject, Rect paramRect);
  
  Object getChild(Object paramObject, int paramInt);
  
  int getChildCount(Object paramObject);
  
  CharSequence getClassName(Object paramObject);
  
  Object getCollectionInfo(Object paramObject);
  
  int getCollectionInfoColumnCount(Object paramObject);
  
  int getCollectionInfoRowCount(Object paramObject);
  
  int getCollectionInfoSelectionMode(Object paramObject);
  
  int getCollectionItemColumnIndex(Object paramObject);
  
  int getCollectionItemColumnSpan(Object paramObject);
  
  Object getCollectionItemInfo(Object paramObject);
  
  int getCollectionItemRowIndex(Object paramObject);
  
  int getCollectionItemRowSpan(Object paramObject);
  
  CharSequence getContentDescription(Object paramObject);
  
  int getDrawingOrder(Object paramObject);
  
  CharSequence getError(Object paramObject);
  
  Bundle getExtras(Object paramObject);
  
  int getInputType(Object paramObject);
  
  Object getLabelFor(Object paramObject);
  
  Object getLabeledBy(Object paramObject);
  
  int getLiveRegion(Object paramObject);
  
  int getMaxTextLength(Object paramObject);
  
  int getMovementGranularities(Object paramObject);
  
  CharSequence getPackageName(Object paramObject);
  
  Object getParent(Object paramObject);
  
  Object getRangeInfo(Object paramObject);
  
  CharSequence getRoleDescription(Object paramObject);
  
  CharSequence getText(Object paramObject);
  
  int getTextSelectionEnd(Object paramObject);
  
  int getTextSelectionStart(Object paramObject);
  
  Object getTraversalAfter(Object paramObject);
  
  Object getTraversalBefore(Object paramObject);
  
  String getViewIdResourceName(Object paramObject);
  
  Object getWindow(Object paramObject);
  
  int getWindowId(Object paramObject);
  
  boolean isAccessibilityFocused(Object paramObject);
  
  boolean isCheckable(Object paramObject);
  
  boolean isChecked(Object paramObject);
  
  boolean isClickable(Object paramObject);
  
  boolean isCollectionInfoHierarchical(Object paramObject);
  
  boolean isCollectionItemHeading(Object paramObject);
  
  boolean isCollectionItemSelected(Object paramObject);
  
  boolean isContentInvalid(Object paramObject);
  
  boolean isContextClickable(Object paramObject);
  
  boolean isDismissable(Object paramObject);
  
  boolean isEditable(Object paramObject);
  
  boolean isEnabled(Object paramObject);
  
  boolean isFocusable(Object paramObject);
  
  boolean isFocused(Object paramObject);
  
  boolean isImportantForAccessibility(Object paramObject);
  
  boolean isLongClickable(Object paramObject);
  
  boolean isMultiLine(Object paramObject);
  
  boolean isPassword(Object paramObject);
  
  boolean isScrollable(Object paramObject);
  
  boolean isSelected(Object paramObject);
  
  boolean isVisibleToUser(Object paramObject);
  
  Object newAccessibilityAction(int paramInt, CharSequence paramCharSequence);
  
  Object obtain();
  
  Object obtain(View paramView);
  
  Object obtain(View paramView, int paramInt);
  
  Object obtain(Object paramObject);
  
  Object obtainCollectionInfo(int paramInt1, int paramInt2, boolean paramBoolean);
  
  Object obtainCollectionInfo(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3);
  
  Object obtainCollectionItemInfo(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean);
  
  Object obtainCollectionItemInfo(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2);
  
  Object obtainRangeInfo(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3);
  
  boolean performAction(Object paramObject, int paramInt);
  
  boolean performAction(Object paramObject, int paramInt, Bundle paramBundle);
  
  void recycle(Object paramObject);
  
  boolean refresh(Object paramObject);
  
  boolean removeAction(Object paramObject1, Object paramObject2);
  
  boolean removeChild(Object paramObject, View paramView);
  
  boolean removeChild(Object paramObject, View paramView, int paramInt);
  
  void setAccessibilityFocused(Object paramObject, boolean paramBoolean);
  
  void setBoundsInParent(Object paramObject, Rect paramRect);
  
  void setBoundsInScreen(Object paramObject, Rect paramRect);
  
  void setCanOpenPopup(Object paramObject, boolean paramBoolean);
  
  void setCheckable(Object paramObject, boolean paramBoolean);
  
  void setChecked(Object paramObject, boolean paramBoolean);
  
  void setClassName(Object paramObject, CharSequence paramCharSequence);
  
  void setClickable(Object paramObject, boolean paramBoolean);
  
  void setCollectionInfo(Object paramObject1, Object paramObject2);
  
  void setCollectionItemInfo(Object paramObject1, Object paramObject2);
  
  void setContentDescription(Object paramObject, CharSequence paramCharSequence);
  
  void setContentInvalid(Object paramObject, boolean paramBoolean);
  
  void setContextClickable(Object paramObject, boolean paramBoolean);
  
  void setDismissable(Object paramObject, boolean paramBoolean);
  
  void setDrawingOrder(Object paramObject, int paramInt);
  
  void setEditable(Object paramObject, boolean paramBoolean);
  
  void setEnabled(Object paramObject, boolean paramBoolean);
  
  void setError(Object paramObject, CharSequence paramCharSequence);
  
  void setFocusable(Object paramObject, boolean paramBoolean);
  
  void setFocused(Object paramObject, boolean paramBoolean);
  
  void setImportantForAccessibility(Object paramObject, boolean paramBoolean);
  
  void setInputType(Object paramObject, int paramInt);
  
  void setLabelFor(Object paramObject, View paramView);
  
  void setLabelFor(Object paramObject, View paramView, int paramInt);
  
  void setLabeledBy(Object paramObject, View paramView);
  
  void setLabeledBy(Object paramObject, View paramView, int paramInt);
  
  void setLiveRegion(Object paramObject, int paramInt);
  
  void setLongClickable(Object paramObject, boolean paramBoolean);
  
  void setMaxTextLength(Object paramObject, int paramInt);
  
  void setMovementGranularities(Object paramObject, int paramInt);
  
  void setMultiLine(Object paramObject, boolean paramBoolean);
  
  void setPackageName(Object paramObject, CharSequence paramCharSequence);
  
  void setParent(Object paramObject, View paramView);
  
  void setParent(Object paramObject, View paramView, int paramInt);
  
  void setPassword(Object paramObject, boolean paramBoolean);
  
  void setRangeInfo(Object paramObject1, Object paramObject2);
  
  void setRoleDescription(Object paramObject, CharSequence paramCharSequence);
  
  void setScrollable(Object paramObject, boolean paramBoolean);
  
  void setSelected(Object paramObject, boolean paramBoolean);
  
  void setSource(Object paramObject, View paramView);
  
  void setSource(Object paramObject, View paramView, int paramInt);
  
  void setText(Object paramObject, CharSequence paramCharSequence);
  
  void setTextSelection(Object paramObject, int paramInt1, int paramInt2);
  
  void setTraversalAfter(Object paramObject, View paramView);
  
  void setTraversalAfter(Object paramObject, View paramView, int paramInt);
  
  void setTraversalBefore(Object paramObject, View paramView);
  
  void setTraversalBefore(Object paramObject, View paramView, int paramInt);
  
  void setViewIdResourceName(Object paramObject, String paramString);
  
  void setVisibleToUser(Object paramObject, boolean paramBoolean);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */