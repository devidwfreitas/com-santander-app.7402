package br.com.santander.uisdk.edittext;

import alv;
import alx;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.EditText;
import ane;
import anf;
import ang;

public class SantanderEditText extends EditText {
  private Boolean a = Boolean.valueOf(false);
  
  private Integer b = Integer.valueOf(-1);
  
  private Integer c = Integer.valueOf(-1);
  
  public SantanderEditText(Context paramContext) {
    super(paramContext);
  }
  
  public SantanderEditText(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public SantanderEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  @TargetApi(21)
  public SantanderEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet) {
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, alx.SantanderEditText);
    this.a = Boolean.valueOf(typedArray.getBoolean(alx.SantanderEditText_required, false));
    this.b = Integer.valueOf(typedArray.getInteger(alx.SantanderEditText_max_length, -1));
    this.c = Integer.valueOf(typedArray.getInteger(alx.SantanderEditText_min_length, -1));
  }
  
  public ang a() {
    ang ang = new ang(this);
    String str = getText().toString();
    if (this.a.booleanValue() && (str == null || str.isEmpty()))
      ang.a(new ane(anf.REQUIRED, getContext().getString(alv.invalid_field_required))); 
    if (this.b.intValue() > -1 && str.length() > this.b.intValue())
      ang.a(new ane(anf.MAX_LENGTH, getContext().getString(alv.invalid_field_max_length) + this.b)); 
    if (this.c.intValue() > -1 && str.length() < this.c.intValue())
      ang.a(new ane(anf.MIN_LENGTH, getContext().getString(alv.invalid_field_min_length) + this.c)); 
    return ang;
  }
  
  public Boolean b() {
    return this.a;
  }
  
  public Integer c() {
    return this.b;
  }
  
  public Integer d() {
    return this.c;
  }
  
  public void setMaxLength(Integer paramInteger) {
    this.b = paramInteger;
  }
  
  public void setMinLength(Integer paramInteger) {
    this.c = paramInteger;
  }
  
  public void setRequired(Boolean paramBoolean) {
    this.a = paramBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santande\\uisdk\edittext\SantanderEditText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */