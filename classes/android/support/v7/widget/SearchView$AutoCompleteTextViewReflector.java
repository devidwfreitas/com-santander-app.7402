package android.support.v7.widget;

import android.os.ResultReceiver;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import java.lang.reflect.Method;

class SearchView$AutoCompleteTextViewReflector {
  private Method doAfterTextChanged;
  
  private Method doBeforeTextChanged;
  
  private Method ensureImeVisible;
  
  private Method showSoftInputUnchecked;
  
  SearchView$AutoCompleteTextViewReflector() {
    try {
      this.doBeforeTextChanged = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
      this.doBeforeTextChanged.setAccessible(true);
    } catch (NoSuchMethodException noSuchMethodException) {}
    try {
      this.doAfterTextChanged = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
      this.doAfterTextChanged.setAccessible(true);
    } catch (NoSuchMethodException noSuchMethodException) {}
    try {
      this.ensureImeVisible = AutoCompleteTextView.class.getMethod("ensureImeVisible", new Class[] { boolean.class });
      this.ensureImeVisible.setAccessible(true);
    } catch (NoSuchMethodException noSuchMethodException) {}
    try {
      this.showSoftInputUnchecked = InputMethodManager.class.getMethod("showSoftInputUnchecked", new Class[] { int.class, ResultReceiver.class });
      this.showSoftInputUnchecked.setAccessible(true);
      return;
    } catch (NoSuchMethodException noSuchMethodException) {
      return;
    } 
  }
  
  void doAfterTextChanged(AutoCompleteTextView paramAutoCompleteTextView) {
    if (this.doAfterTextChanged != null)
      try {
        this.doAfterTextChanged.invoke(paramAutoCompleteTextView, new Object[0]);
        return;
      } catch (Exception exception) {
        return;
      }  
  }
  
  void doBeforeTextChanged(AutoCompleteTextView paramAutoCompleteTextView) {
    if (this.doBeforeTextChanged != null)
      try {
        this.doBeforeTextChanged.invoke(paramAutoCompleteTextView, new Object[0]);
        return;
      } catch (Exception exception) {
        return;
      }  
  }
  
  void ensureImeVisible(AutoCompleteTextView paramAutoCompleteTextView, boolean paramBoolean) {
    if (this.ensureImeVisible != null)
      try {
        this.ensureImeVisible.invoke(paramAutoCompleteTextView, new Object[] { Boolean.valueOf(paramBoolean) });
        return;
      } catch (Exception exception) {
        return;
      }  
  }
  
  void showSoftInputUnchecked(InputMethodManager paramInputMethodManager, View paramView, int paramInt) {
    if (this.showSoftInputUnchecked != null)
      try {
        this.showSoftInputUnchecked.invoke(paramInputMethodManager, new Object[] { Integer.valueOf(paramInt), null });
        return;
      } catch (Exception exception) {} 
    paramInputMethodManager.showSoftInput(paramView, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\SearchView$AutoCompleteTextViewReflector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */