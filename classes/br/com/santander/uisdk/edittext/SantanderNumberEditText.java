package br.com.santander.uisdk.edittext;

import alv;
import alx;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import ane;
import anf;
import ang;

public class SantanderNumberEditText extends SantanderEditText {
  private Integer a = Integer.valueOf(-1);
  
  private Integer b = Integer.valueOf(-1);
  
  private Integer c = Integer.valueOf(-1);
  
  private Integer d = Integer.valueOf(-1);
  
  public SantanderNumberEditText(Context paramContext) {
    super(paramContext);
  }
  
  public SantanderNumberEditText(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public SantanderNumberEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  public SantanderNumberEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet) {
    setInputType(2);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, alx.SantanderCurrencyEditText);
    this.a = Integer.valueOf(typedArray.getInteger(alx.SantanderEditText_greater_than, -1));
    this.b = Integer.valueOf(typedArray.getInteger(alx.SantanderEditText_greater_than_or_equal_to, -1));
    this.c = Integer.valueOf(typedArray.getInteger(alx.SantanderEditText_less_than, -1));
    this.d = Integer.valueOf(typedArray.getInteger(alx.SantanderEditText_less_than_or_equal_to, -1));
  }
  
  public ang a() {
    ang ang = super.a();
    String str = getText().toString();
    if (this.a.intValue() > -1 && str.length() < this.a.intValue())
      ang.a(new ane(anf.GREATER_THAN, getContext().getString(alv.invalid_field_greather_than) + this.a)); 
    if (this.b.intValue() > -1 && str.length() <= this.b.intValue())
      ang.a(new ane(anf.GREATHER_THAN_OR_EQUAL_TO, getContext().getString(alv.invalid_field_greather_than_or_equal_to) + this.b)); 
    if (this.c.intValue() > -1 && str.length() > this.c.intValue())
      ang.a(new ane(anf.LESS_THAN, getContext().getString(alv.invalid_field_less_than) + this.c)); 
    if (this.d.intValue() > -1 && str.length() >= this.d.intValue())
      ang.a(new ane(anf.LESS_THAN_OR_EQUAL_TO, getContext().getString(alv.invalid_field_less_than_or_equal_to) + this.d)); 
    return ang;
  }
  
  public Integer e() {
    return this.a;
  }
  
  public Integer f() {
    return this.b;
  }
  
  public Integer g() {
    return this.c;
  }
  
  public Integer h() {
    return this.d;
  }
  
  public void setGreatherThan(Integer paramInteger) {
    this.a = paramInteger;
  }
  
  public void setGreatherThanOrEqualTo(Integer paramInteger) {
    this.b = paramInteger;
  }
  
  public void setLessThan(Integer paramInteger) {
    this.c = paramInteger;
  }
  
  public void setLessThanOrEqualTo(Integer paramInteger) {
    this.d = paramInteger;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santande\\uisdk\edittext\SantanderNumberEditText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */