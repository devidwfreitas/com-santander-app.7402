package br.com.santander.uisdk.edittext;

import alv;
import android.content.Context;
import android.util.AttributeSet;
import ane;
import anf;
import ang;
import anx;

public class SantanderCPFEditText extends SantanderEditText {
  private Integer a = Integer.valueOf(13);
  
  public SantanderCPFEditText(Context paramContext) {
    super(paramContext);
    e();
  }
  
  public SantanderCPFEditText(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    e();
  }
  
  public SantanderCPFEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    e();
  }
  
  public SantanderCPFEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    e();
  }
  
  private void e() {
    addTextChangedListener(anx.a("###.###.###-##", this));
  }
  
  public ang a() {
    ang ang = super.a();
    if (!anx.b(anx.a(getText().toString())))
      ang.a(new ane(anf.INVALID_CPF, getContext().getString(alv.invalid_field_cpf))); 
    return ang;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santande\\uisdk\edittext\SantanderCPFEditText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */