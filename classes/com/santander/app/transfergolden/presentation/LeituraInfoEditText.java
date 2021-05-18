package com.santander.app.transfergolden.presentation;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.design.widget.TextInputEditText;
import android.support.design.widget.TextInputLayout;
import android.support.v7.widget.AppCompatSpinner;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import flv;
import mtl;
import mtm;
import mtn;
import mto;
import mtp;

public class LeituraInfoEditText extends RelativeLayout {
  private static final int a = 1;
  
  private static final int b = 2;
  
  private ImageView c;
  
  private TextView d;
  
  private TextInputLayout e;
  
  private TextInputEditText f;
  
  private AppCompatSpinner g;
  
  private int h = 1;
  
  private String i;
  
  private mtp j;
  
  private View.OnFocusChangeListener k;
  
  public LeituraInfoEditText(Context paramContext) {
    super(paramContext);
    a((AttributeSet)null);
  }
  
  public LeituraInfoEditText(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  public LeituraInfoEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
  }
  
  private void a(AttributeSet paramAttributeSet) {
    inflate(getContext(), 2130969508, (ViewGroup)this);
    this.c = (ImageView)findViewById(2131759566);
    this.d = (TextView)findViewById(2131759567);
    this.e = (TextInputLayout)findViewById(2131756135);
    this.f = (TextInputEditText)findViewById(2131756136);
    this.g = (AppCompatSpinner)findViewById(2131755093);
    this.g.setOnItemSelectedListener((AdapterView.OnItemSelectedListener)new mtl(this));
    a((TextWatcher)new mtm(this));
    this.f.setOnFocusChangeListener((View.OnFocusChangeListener)new mtn(this));
    b(paramAttributeSet);
    invalidate();
  }
  
  private void b(AttributeSet paramAttributeSet) {
    if (paramAttributeSet != null) {
      TypedArray typedArray = getContext().getTheme().obtainStyledAttributes(paramAttributeSet, flv.LeituraInfoEditText, 0, 0);
      try {
        String str1 = typedArray.getString(1);
        String str2 = typedArray.getString(2);
        int i = typedArray.getInt(3, 0);
        this.e.setHint(str1);
        this.d.setText(str2);
        switch (i) {
          case 1:
            this.g.setVisibility(8);
            this.f.setInputType(2);
            return;
          case 2:
            e();
            return;
        } 
        this.f.setInputType(16384);
        this.g.setVisibility(8);
        return;
      } finally {
        typedArray.recycle();
      } 
    } 
  }
  
  private void e() {
    this.h = 2;
    this.f.setText(" ");
    this.f.setInputType(0);
    this.g.setVisibility(0);
  }
  
  public String a() {
    return this.i;
  }
  
  public void a(int paramInt) {
    if (this.h == 2) {
      this.g.setSelection(paramInt);
      return;
    } 
    this.f.setSelection(paramInt);
  }
  
  public void a(TextWatcher paramTextWatcher) {
    this.f.addTextChangedListener(paramTextWatcher);
  }
  
  public void a(String paramString) {
    if (this.h == 2)
      return; 
    this.f.setText(paramString);
  }
  
  public void a(mtp parammtp) {
    this.j = parammtp;
  }
  
  public void a(String[] paramArrayOfString) {
    ArrayAdapter arrayAdapter = new ArrayAdapter(getContext(), 17367043, (Object[])paramArrayOfString);
    this.g.setAdapter((SpinnerAdapter)arrayAdapter);
    e();
  }
  
  public int b() {
    return this.g.getSelectedItemPosition();
  }
  
  public void b(int paramInt) {
    InputFilter.LengthFilter lengthFilter = new InputFilter.LengthFilter(paramInt);
    this.f.setFilters(new InputFilter[] { (InputFilter)lengthFilter });
  }
  
  public void b(TextWatcher paramTextWatcher) {
    this.f.removeTextChangedListener(paramTextWatcher);
  }
  
  public void b(String paramString) {
    this.e.setErrorEnabled(true);
    this.e.setError(paramString);
  }
  
  public EditText c() {
    return (EditText)this.f;
  }
  
  public void d() {
    this.e.setErrorEnabled(false);
    this.e.setError(null);
  }
  
  public void setOnFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener) {
    this.k = (View.OnFocusChangeListener)new mto(this, paramOnFocusChangeListener);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\transfergolden\presentation\LeituraInfoEditText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */