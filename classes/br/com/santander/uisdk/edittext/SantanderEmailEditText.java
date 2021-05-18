package br.com.santander.uisdk.edittext;

import alv;
import alx;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Patterns;
import ane;
import anf;
import ang;

public class SantanderEmailEditText extends SantanderEditText {
  public SantanderEmailEditText(Context paramContext) {
    super(paramContext);
  }
  
  public SantanderEmailEditText(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public SantanderEmailEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  public SantanderEmailEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext, paramAttributeSet);
  }
  
  private Boolean a(String paramString) {
    return Boolean.valueOf(Patterns.EMAIL_ADDRESS.matcher(paramString).matches());
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet) {
    paramContext.obtainStyledAttributes(paramAttributeSet, alx.SantanderCurrencyEditText);
  }
  
  public ang a() {
    ang ang = super.a();
    if (!a(getText().toString()).booleanValue())
      ang.a(new ane(anf.INVALID_EMAIL, getContext().getString(alv.invalid_field_email))); 
    return ang;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santande\\uisdk\edittext\SantanderEmailEditText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */