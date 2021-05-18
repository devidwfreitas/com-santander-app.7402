package android.support.design.widget;

import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

class TextInputLayout$TextInputAccessibilityDelegate extends AccessibilityDelegateCompat {
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent) {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(TextInputLayout.class.getSimpleName());
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    paramAccessibilityNodeInfoCompat.setClassName(TextInputLayout.class.getSimpleName());
    CharSequence charSequence = TextInputLayout.this.mCollapsingTextHelper.getText();
    if (!TextUtils.isEmpty(charSequence))
      paramAccessibilityNodeInfoCompat.setText(charSequence); 
    if (TextInputLayout.this.mEditText != null)
      paramAccessibilityNodeInfoCompat.setLabelFor((View)TextInputLayout.this.mEditText); 
    if (TextInputLayout.this.mErrorView != null) {
      charSequence = TextInputLayout.this.mErrorView.getText();
    } else {
      charSequence = null;
    } 
    if (!TextUtils.isEmpty(charSequence)) {
      paramAccessibilityNodeInfoCompat.setContentInvalid(true);
      paramAccessibilityNodeInfoCompat.setError(charSequence);
    } 
  }
  
  public void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent) {
    super.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
    CharSequence charSequence = TextInputLayout.this.mCollapsingTextHelper.getText();
    if (!TextUtils.isEmpty(charSequence))
      paramAccessibilityEvent.getText().add(charSequence); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\TextInputLayout$TextInputAccessibilityDelegate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */