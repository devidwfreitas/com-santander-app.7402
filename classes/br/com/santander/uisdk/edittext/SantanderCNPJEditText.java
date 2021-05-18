package br.com.santander.uisdk.edittext;

import alv;
import android.content.Context;
import android.util.AttributeSet;
import ane;
import anf;
import ang;
import anx;

public class SantanderCNPJEditText extends SantanderEditText {
  public SantanderCNPJEditText(Context paramContext) {
    super(paramContext);
  }
  
  public SantanderCNPJEditText(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public SantanderCNPJEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  public SantanderCNPJEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet) {
    addTextChangedListener(anx.a("##.###.###/####-##", this));
  }
  
  public ang a() {
    ang ang = super.a();
    if (!anx.c(anx.a(getText().toString())))
      ang.a(new ane(anf.INVALID_CNPJ, getContext().getString(alv.invalid_field_cnpj))); 
    return ang;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santande\\uisdk\edittext\SantanderCNPJEditText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */