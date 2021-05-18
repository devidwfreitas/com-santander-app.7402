package br.com.santander.uisdk.edittext;

import alx;
import android.content.Context;
import android.util.AttributeSet;
import ang;

public class SantanderCurrencyEditText extends SantanderNumberEditText {
  public SantanderCurrencyEditText(Context paramContext) {
    super(paramContext);
  }
  
  public SantanderCurrencyEditText(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public SantanderCurrencyEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  public SantanderCurrencyEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet) {
    paramContext.obtainStyledAttributes(paramAttributeSet, alx.SantanderCurrencyEditText);
  }
  
  public ang a() {
    return super.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santande\\uisdk\edittext\SantanderCurrencyEditText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */