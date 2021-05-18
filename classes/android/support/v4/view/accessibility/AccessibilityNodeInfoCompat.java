package android.support.v4.view.accessibility;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class AccessibilityNodeInfoCompat {
  public static final int ACTION_ACCESSIBILITY_FOCUS = 64;
  
  public static final String ACTION_ARGUMENT_COLUMN_INT = "android.view.accessibility.action.ARGUMENT_COLUMN_INT";
  
  public static final String ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN";
  
  public static final String ACTION_ARGUMENT_HTML_ELEMENT_STRING = "ACTION_ARGUMENT_HTML_ELEMENT_STRING";
  
  public static final String ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT";
  
  public static final String ACTION_ARGUMENT_PROGRESS_VALUE = "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE";
  
  public static final String ACTION_ARGUMENT_ROW_INT = "android.view.accessibility.action.ARGUMENT_ROW_INT";
  
  public static final String ACTION_ARGUMENT_SELECTION_END_INT = "ACTION_ARGUMENT_SELECTION_END_INT";
  
  public static final String ACTION_ARGUMENT_SELECTION_START_INT = "ACTION_ARGUMENT_SELECTION_START_INT";
  
  public static final String ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE";
  
  public static final int ACTION_CLEAR_ACCESSIBILITY_FOCUS = 128;
  
  public static final int ACTION_CLEAR_FOCUS = 2;
  
  public static final int ACTION_CLEAR_SELECTION = 8;
  
  public static final int ACTION_CLICK = 16;
  
  public static final int ACTION_COLLAPSE = 524288;
  
  public static final int ACTION_COPY = 16384;
  
  public static final int ACTION_CUT = 65536;
  
  public static final int ACTION_DISMISS = 1048576;
  
  public static final int ACTION_EXPAND = 262144;
  
  public static final int ACTION_FOCUS = 1;
  
  public static final int ACTION_LONG_CLICK = 32;
  
  public static final int ACTION_NEXT_AT_MOVEMENT_GRANULARITY = 256;
  
  public static final int ACTION_NEXT_HTML_ELEMENT = 1024;
  
  public static final int ACTION_PASTE = 32768;
  
  public static final int ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = 512;
  
  public static final int ACTION_PREVIOUS_HTML_ELEMENT = 2048;
  
  public static final int ACTION_SCROLL_BACKWARD = 8192;
  
  public static final int ACTION_SCROLL_FORWARD = 4096;
  
  public static final int ACTION_SELECT = 4;
  
  public static final int ACTION_SET_SELECTION = 131072;
  
  public static final int ACTION_SET_TEXT = 2097152;
  
  public static final int FOCUS_ACCESSIBILITY = 2;
  
  public static final int FOCUS_INPUT = 1;
  
  static final AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl IMPL = new AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl();
  
  public static final int MOVEMENT_GRANULARITY_CHARACTER = 1;
  
  public static final int MOVEMENT_GRANULARITY_LINE = 4;
  
  public static final int MOVEMENT_GRANULARITY_PAGE = 16;
  
  public static final int MOVEMENT_GRANULARITY_PARAGRAPH = 8;
  
  public static final int MOVEMENT_GRANULARITY_WORD = 2;
  
  private final Object mInfo;
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public int mParentVirtualDescendantId = -1;
  
  public AccessibilityNodeInfoCompat(Object paramObject) {
    this.mInfo = paramObject;
  }
  
  private static String getActionSymbolicName(int paramInt) {
    switch (paramInt) {
      default:
        return "ACTION_UNKNOWN";
      case 1:
        return "ACTION_FOCUS";
      case 2:
        return "ACTION_CLEAR_FOCUS";
      case 4:
        return "ACTION_SELECT";
      case 8:
        return "ACTION_CLEAR_SELECTION";
      case 16:
        return "ACTION_CLICK";
      case 32:
        return "ACTION_LONG_CLICK";
      case 64:
        return "ACTION_ACCESSIBILITY_FOCUS";
      case 128:
        return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
      case 256:
        return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
      case 512:
        return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
      case 1024:
        return "ACTION_NEXT_HTML_ELEMENT";
      case 2048:
        return "ACTION_PREVIOUS_HTML_ELEMENT";
      case 4096:
        return "ACTION_SCROLL_FORWARD";
      case 8192:
        return "ACTION_SCROLL_BACKWARD";
      case 65536:
        return "ACTION_CUT";
      case 16384:
        return "ACTION_COPY";
      case 32768:
        return "ACTION_PASTE";
      case 131072:
        break;
    } 
    return "ACTION_SET_SELECTION";
  }
  
  public static AccessibilityNodeInfoCompat obtain() {
    return wrapNonNullInstance(IMPL.obtain());
  }
  
  public static AccessibilityNodeInfoCompat obtain(AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {
    return wrapNonNullInstance(IMPL.obtain(paramAccessibilityNodeInfoCompat.mInfo));
  }
  
  public static AccessibilityNodeInfoCompat obtain(View paramView) {
    return wrapNonNullInstance(IMPL.obtain(paramView));
  }
  
  public static AccessibilityNodeInfoCompat obtain(View paramView, int paramInt) {
    return wrapNonNullInstance(IMPL.obtain(paramView, paramInt));
  }
  
  static AccessibilityNodeInfoCompat wrapNonNullInstance(Object paramObject) {
    return (paramObject != null) ? new AccessibilityNodeInfoCompat(paramObject) : null;
  }
  
  public void addAction(int paramInt) {
    IMPL.addAction(this.mInfo, paramInt);
  }
  
  public void addAction(AccessibilityNodeInfoCompat$AccessibilityActionCompat paramAccessibilityNodeInfoCompat$AccessibilityActionCompat) {
    IMPL.addAction(this.mInfo, paramAccessibilityNodeInfoCompat$AccessibilityActionCompat.mAction);
  }
  
  public void addChild(View paramView) {
    IMPL.addChild(this.mInfo, paramView);
  }
  
  public void addChild(View paramView, int paramInt) {
    IMPL.addChild(this.mInfo, paramView, paramInt);
  }
  
  public boolean canOpenPopup() {
    return IMPL.canOpenPopup(this.mInfo);
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null)
        return false; 
      if (getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (this.mInfo == null)
        return !(((AccessibilityNodeInfoCompat)paramObject).mInfo != null); 
      if (!this.mInfo.equals(((AccessibilityNodeInfoCompat)paramObject).mInfo))
        return false; 
    } 
    return true;
  }
  
  public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String paramString) {
    ArrayList<AccessibilityNodeInfoCompat> arrayList = new ArrayList();
    List<Object> list = IMPL.findAccessibilityNodeInfosByText(this.mInfo, paramString);
    int j = list.size();
    for (int i = 0; i < j; i++)
      arrayList.add(new AccessibilityNodeInfoCompat(list.get(i))); 
    return arrayList;
  }
  
  public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByViewId(String paramString) {
    List<Object> list = IMPL.findAccessibilityNodeInfosByViewId(this.mInfo, paramString);
    if (list != null) {
      ArrayList<Object> arrayList = new ArrayList();
      Iterator iterator = list.iterator();
      while (true) {
        list = arrayList;
        if (iterator.hasNext()) {
          arrayList.add(new AccessibilityNodeInfoCompat(iterator.next()));
          continue;
        } 
        break;
      } 
    } else {
      list = Collections.emptyList();
    } 
    return (List)list;
  }
  
  public AccessibilityNodeInfoCompat findFocus(int paramInt) {
    return wrapNonNullInstance(IMPL.findFocus(this.mInfo, paramInt));
  }
  
  public AccessibilityNodeInfoCompat focusSearch(int paramInt) {
    return wrapNonNullInstance(IMPL.focusSearch(this.mInfo, paramInt));
  }
  
  public List<AccessibilityNodeInfoCompat$AccessibilityActionCompat> getActionList() {
    List<?> list;
    List<Object> list1 = IMPL.getActionList(this.mInfo);
    if (list1 != null) {
      ArrayList<AccessibilityNodeInfoCompat$AccessibilityActionCompat> arrayList = new ArrayList();
      int j = list1.size();
      int i = 0;
      while (true) {
        list = arrayList;
        if (i < j) {
          arrayList.add(new AccessibilityNodeInfoCompat$AccessibilityActionCompat(list1.get(i)));
          i++;
          continue;
        } 
        break;
      } 
    } else {
      list = Collections.emptyList();
    } 
    return (List)list;
  }
  
  public int getActions() {
    return IMPL.getActions(this.mInfo);
  }
  
  public void getBoundsInParent(Rect paramRect) {
    IMPL.getBoundsInParent(this.mInfo, paramRect);
  }
  
  public void getBoundsInScreen(Rect paramRect) {
    IMPL.getBoundsInScreen(this.mInfo, paramRect);
  }
  
  public AccessibilityNodeInfoCompat getChild(int paramInt) {
    return wrapNonNullInstance(IMPL.getChild(this.mInfo, paramInt));
  }
  
  public int getChildCount() {
    return IMPL.getChildCount(this.mInfo);
  }
  
  public CharSequence getClassName() {
    return IMPL.getClassName(this.mInfo);
  }
  
  public AccessibilityNodeInfoCompat$CollectionInfoCompat getCollectionInfo() {
    Object object = IMPL.getCollectionInfo(this.mInfo);
    return (object == null) ? null : new AccessibilityNodeInfoCompat$CollectionInfoCompat(object);
  }
  
  public AccessibilityNodeInfoCompat$CollectionItemInfoCompat getCollectionItemInfo() {
    Object object = IMPL.getCollectionItemInfo(this.mInfo);
    return (object == null) ? null : new AccessibilityNodeInfoCompat$CollectionItemInfoCompat(object);
  }
  
  public CharSequence getContentDescription() {
    return IMPL.getContentDescription(this.mInfo);
  }
  
  public int getDrawingOrder() {
    return IMPL.getDrawingOrder(this.mInfo);
  }
  
  public CharSequence getError() {
    return IMPL.getError(this.mInfo);
  }
  
  public Bundle getExtras() {
    return IMPL.getExtras(this.mInfo);
  }
  
  public Object getInfo() {
    return this.mInfo;
  }
  
  public int getInputType() {
    return IMPL.getInputType(this.mInfo);
  }
  
  public AccessibilityNodeInfoCompat getLabelFor() {
    return wrapNonNullInstance(IMPL.getLabelFor(this.mInfo));
  }
  
  public AccessibilityNodeInfoCompat getLabeledBy() {
    return wrapNonNullInstance(IMPL.getLabeledBy(this.mInfo));
  }
  
  public int getLiveRegion() {
    return IMPL.getLiveRegion(this.mInfo);
  }
  
  public int getMaxTextLength() {
    return IMPL.getMaxTextLength(this.mInfo);
  }
  
  public int getMovementGranularities() {
    return IMPL.getMovementGranularities(this.mInfo);
  }
  
  public CharSequence getPackageName() {
    return IMPL.getPackageName(this.mInfo);
  }
  
  public AccessibilityNodeInfoCompat getParent() {
    return wrapNonNullInstance(IMPL.getParent(this.mInfo));
  }
  
  public AccessibilityNodeInfoCompat$RangeInfoCompat getRangeInfo() {
    Object object = IMPL.getRangeInfo(this.mInfo);
    return (object == null) ? null : new AccessibilityNodeInfoCompat$RangeInfoCompat(object);
  }
  
  @Nullable
  public CharSequence getRoleDescription() {
    return IMPL.getRoleDescription(this.mInfo);
  }
  
  public CharSequence getText() {
    return IMPL.getText(this.mInfo);
  }
  
  public int getTextSelectionEnd() {
    return IMPL.getTextSelectionEnd(this.mInfo);
  }
  
  public int getTextSelectionStart() {
    return IMPL.getTextSelectionStart(this.mInfo);
  }
  
  public AccessibilityNodeInfoCompat getTraversalAfter() {
    return wrapNonNullInstance(IMPL.getTraversalAfter(this.mInfo));
  }
  
  public AccessibilityNodeInfoCompat getTraversalBefore() {
    return wrapNonNullInstance(IMPL.getTraversalBefore(this.mInfo));
  }
  
  public String getViewIdResourceName() {
    return IMPL.getViewIdResourceName(this.mInfo);
  }
  
  public AccessibilityWindowInfoCompat getWindow() {
    return AccessibilityWindowInfoCompat.wrapNonNullInstance(IMPL.getWindow(this.mInfo));
  }
  
  public int getWindowId() {
    return IMPL.getWindowId(this.mInfo);
  }
  
  public int hashCode() {
    return (this.mInfo == null) ? 0 : this.mInfo.hashCode();
  }
  
  public boolean isAccessibilityFocused() {
    return IMPL.isAccessibilityFocused(this.mInfo);
  }
  
  public boolean isCheckable() {
    return IMPL.isCheckable(this.mInfo);
  }
  
  public boolean isChecked() {
    return IMPL.isChecked(this.mInfo);
  }
  
  public boolean isClickable() {
    return IMPL.isClickable(this.mInfo);
  }
  
  public boolean isContentInvalid() {
    return IMPL.isContentInvalid(this.mInfo);
  }
  
  public boolean isContextClickable() {
    return IMPL.isContextClickable(this.mInfo);
  }
  
  public boolean isDismissable() {
    return IMPL.isDismissable(this.mInfo);
  }
  
  public boolean isEditable() {
    return IMPL.isEditable(this.mInfo);
  }
  
  public boolean isEnabled() {
    return IMPL.isEnabled(this.mInfo);
  }
  
  public boolean isFocusable() {
    return IMPL.isFocusable(this.mInfo);
  }
  
  public boolean isFocused() {
    return IMPL.isFocused(this.mInfo);
  }
  
  public boolean isImportantForAccessibility() {
    return IMPL.isImportantForAccessibility(this.mInfo);
  }
  
  public boolean isLongClickable() {
    return IMPL.isLongClickable(this.mInfo);
  }
  
  public boolean isMultiLine() {
    return IMPL.isMultiLine(this.mInfo);
  }
  
  public boolean isPassword() {
    return IMPL.isPassword(this.mInfo);
  }
  
  public boolean isScrollable() {
    return IMPL.isScrollable(this.mInfo);
  }
  
  public boolean isSelected() {
    return IMPL.isSelected(this.mInfo);
  }
  
  public boolean isVisibleToUser() {
    return IMPL.isVisibleToUser(this.mInfo);
  }
  
  public boolean performAction(int paramInt) {
    return IMPL.performAction(this.mInfo, paramInt);
  }
  
  public boolean performAction(int paramInt, Bundle paramBundle) {
    return IMPL.performAction(this.mInfo, paramInt, paramBundle);
  }
  
  public void recycle() {
    IMPL.recycle(this.mInfo);
  }
  
  public boolean refresh() {
    return IMPL.refresh(this.mInfo);
  }
  
  public boolean removeAction(AccessibilityNodeInfoCompat$AccessibilityActionCompat paramAccessibilityNodeInfoCompat$AccessibilityActionCompat) {
    return IMPL.removeAction(this.mInfo, paramAccessibilityNodeInfoCompat$AccessibilityActionCompat.mAction);
  }
  
  public boolean removeChild(View paramView) {
    return IMPL.removeChild(this.mInfo, paramView);
  }
  
  public boolean removeChild(View paramView, int paramInt) {
    return IMPL.removeChild(this.mInfo, paramView, paramInt);
  }
  
  public void setAccessibilityFocused(boolean paramBoolean) {
    IMPL.setAccessibilityFocused(this.mInfo, paramBoolean);
  }
  
  public void setBoundsInParent(Rect paramRect) {
    IMPL.setBoundsInParent(this.mInfo, paramRect);
  }
  
  public void setBoundsInScreen(Rect paramRect) {
    IMPL.setBoundsInScreen(this.mInfo, paramRect);
  }
  
  public void setCanOpenPopup(boolean paramBoolean) {
    IMPL.setCanOpenPopup(this.mInfo, paramBoolean);
  }
  
  public void setCheckable(boolean paramBoolean) {
    IMPL.setCheckable(this.mInfo, paramBoolean);
  }
  
  public void setChecked(boolean paramBoolean) {
    IMPL.setChecked(this.mInfo, paramBoolean);
  }
  
  public void setClassName(CharSequence paramCharSequence) {
    IMPL.setClassName(this.mInfo, paramCharSequence);
  }
  
  public void setClickable(boolean paramBoolean) {
    IMPL.setClickable(this.mInfo, paramBoolean);
  }
  
  public void setCollectionInfo(Object paramObject) {
    IMPL.setCollectionInfo(this.mInfo, ((AccessibilityNodeInfoCompat$CollectionInfoCompat)paramObject).mInfo);
  }
  
  public void setCollectionItemInfo(Object paramObject) {
    IMPL.setCollectionItemInfo(this.mInfo, ((AccessibilityNodeInfoCompat$CollectionItemInfoCompat)paramObject).mInfo);
  }
  
  public void setContentDescription(CharSequence paramCharSequence) {
    IMPL.setContentDescription(this.mInfo, paramCharSequence);
  }
  
  public void setContentInvalid(boolean paramBoolean) {
    IMPL.setContentInvalid(this.mInfo, paramBoolean);
  }
  
  public void setContextClickable(boolean paramBoolean) {
    IMPL.setContextClickable(this.mInfo, paramBoolean);
  }
  
  public void setDismissable(boolean paramBoolean) {
    IMPL.setDismissable(this.mInfo, paramBoolean);
  }
  
  public void setDrawingOrder(int paramInt) {
    IMPL.setDrawingOrder(this.mInfo, paramInt);
  }
  
  public void setEditable(boolean paramBoolean) {
    IMPL.setEditable(this.mInfo, paramBoolean);
  }
  
  public void setEnabled(boolean paramBoolean) {
    IMPL.setEnabled(this.mInfo, paramBoolean);
  }
  
  public void setError(CharSequence paramCharSequence) {
    IMPL.setError(this.mInfo, paramCharSequence);
  }
  
  public void setFocusable(boolean paramBoolean) {
    IMPL.setFocusable(this.mInfo, paramBoolean);
  }
  
  public void setFocused(boolean paramBoolean) {
    IMPL.setFocused(this.mInfo, paramBoolean);
  }
  
  public void setImportantForAccessibility(boolean paramBoolean) {
    IMPL.setImportantForAccessibility(this.mInfo, paramBoolean);
  }
  
  public void setInputType(int paramInt) {
    IMPL.setInputType(this.mInfo, paramInt);
  }
  
  public void setLabelFor(View paramView) {
    IMPL.setLabelFor(this.mInfo, paramView);
  }
  
  public void setLabelFor(View paramView, int paramInt) {
    IMPL.setLabelFor(this.mInfo, paramView, paramInt);
  }
  
  public void setLabeledBy(View paramView) {
    IMPL.setLabeledBy(this.mInfo, paramView);
  }
  
  public void setLabeledBy(View paramView, int paramInt) {
    IMPL.setLabeledBy(this.mInfo, paramView, paramInt);
  }
  
  public void setLiveRegion(int paramInt) {
    IMPL.setLiveRegion(this.mInfo, paramInt);
  }
  
  public void setLongClickable(boolean paramBoolean) {
    IMPL.setLongClickable(this.mInfo, paramBoolean);
  }
  
  public void setMaxTextLength(int paramInt) {
    IMPL.setMaxTextLength(this.mInfo, paramInt);
  }
  
  public void setMovementGranularities(int paramInt) {
    IMPL.setMovementGranularities(this.mInfo, paramInt);
  }
  
  public void setMultiLine(boolean paramBoolean) {
    IMPL.setMultiLine(this.mInfo, paramBoolean);
  }
  
  public void setPackageName(CharSequence paramCharSequence) {
    IMPL.setPackageName(this.mInfo, paramCharSequence);
  }
  
  public void setParent(View paramView) {
    IMPL.setParent(this.mInfo, paramView);
  }
  
  public void setParent(View paramView, int paramInt) {
    this.mParentVirtualDescendantId = paramInt;
    IMPL.setParent(this.mInfo, paramView, paramInt);
  }
  
  public void setPassword(boolean paramBoolean) {
    IMPL.setPassword(this.mInfo, paramBoolean);
  }
  
  public void setRangeInfo(AccessibilityNodeInfoCompat$RangeInfoCompat paramAccessibilityNodeInfoCompat$RangeInfoCompat) {
    IMPL.setRangeInfo(this.mInfo, paramAccessibilityNodeInfoCompat$RangeInfoCompat.mInfo);
  }
  
  public void setRoleDescription(@Nullable CharSequence paramCharSequence) {
    IMPL.setRoleDescription(this.mInfo, paramCharSequence);
  }
  
  public void setScrollable(boolean paramBoolean) {
    IMPL.setScrollable(this.mInfo, paramBoolean);
  }
  
  public void setSelected(boolean paramBoolean) {
    IMPL.setSelected(this.mInfo, paramBoolean);
  }
  
  public void setSource(View paramView) {
    IMPL.setSource(this.mInfo, paramView);
  }
  
  public void setSource(View paramView, int paramInt) {
    IMPL.setSource(this.mInfo, paramView, paramInt);
  }
  
  public void setText(CharSequence paramCharSequence) {
    IMPL.setText(this.mInfo, paramCharSequence);
  }
  
  public void setTextSelection(int paramInt1, int paramInt2) {
    IMPL.setTextSelection(this.mInfo, paramInt1, paramInt2);
  }
  
  public void setTraversalAfter(View paramView) {
    IMPL.setTraversalAfter(this.mInfo, paramView);
  }
  
  public void setTraversalAfter(View paramView, int paramInt) {
    IMPL.setTraversalAfter(this.mInfo, paramView, paramInt);
  }
  
  public void setTraversalBefore(View paramView) {
    IMPL.setTraversalBefore(this.mInfo, paramView);
  }
  
  public void setTraversalBefore(View paramView, int paramInt) {
    IMPL.setTraversalBefore(this.mInfo, paramView, paramInt);
  }
  
  public void setViewIdResourceName(String paramString) {
    IMPL.setViewIdResourceName(this.mInfo, paramString);
  }
  
  public void setVisibleToUser(boolean paramBoolean) {
    IMPL.setVisibleToUser(this.mInfo, paramBoolean);
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(super.toString());
    Rect rect = new Rect();
    getBoundsInParent(rect);
    stringBuilder.append("; boundsInParent: " + rect);
    getBoundsInScreen(rect);
    stringBuilder.append("; boundsInScreen: " + rect);
    stringBuilder.append("; packageName: ").append(getPackageName());
    stringBuilder.append("; className: ").append(getClassName());
    stringBuilder.append("; text: ").append(getText());
    stringBuilder.append("; contentDescription: ").append(getContentDescription());
    stringBuilder.append("; viewId: ").append(getViewIdResourceName());
    stringBuilder.append("; checkable: ").append(isCheckable());
    stringBuilder.append("; checked: ").append(isChecked());
    stringBuilder.append("; focusable: ").append(isFocusable());
    stringBuilder.append("; focused: ").append(isFocused());
    stringBuilder.append("; selected: ").append(isSelected());
    stringBuilder.append("; clickable: ").append(isClickable());
    stringBuilder.append("; longClickable: ").append(isLongClickable());
    stringBuilder.append("; enabled: ").append(isEnabled());
    stringBuilder.append("; password: ").append(isPassword());
    stringBuilder.append("; scrollable: " + isScrollable());
    stringBuilder.append("; [");
    int i = getActions();
    while (i != 0) {
      int k = 1 << Integer.numberOfTrailingZeros(i);
      int j = i & (k ^ 0xFFFFFFFF);
      stringBuilder.append(getActionSymbolicName(k));
      i = j;
      if (j != 0) {
        stringBuilder.append(", ");
        i = j;
      } 
    } 
    stringBuilder.append("]");
    return stringBuilder.toString();
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 24) {
      IMPL = new AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi24Impl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 23) {
      IMPL = new AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi23Impl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 22) {
      IMPL = new AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 21) {
      IMPL = new AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 19) {
      IMPL = new AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 18) {
      IMPL = new AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 17) {
      IMPL = new AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 16) {
      IMPL = new AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 14) {
      IMPL = new AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityNodeInfoCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */