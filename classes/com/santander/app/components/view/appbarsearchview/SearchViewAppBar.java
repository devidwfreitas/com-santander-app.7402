package com.santander.app.components.view.appbarsearchview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import flv;
import gsb;
import gsf;
import gsg;
import gsh;
import gsi;
import gsj;
import gsk;
import gsl;
import gsm;
import gsn;
import java.lang.reflect.Field;

public class SearchViewAppBar extends FrameLayout {
  private MenuItem a;
  
  private boolean b = false;
  
  private int c;
  
  private boolean d;
  
  private View e;
  
  private View f;
  
  private EditText g;
  
  private ImageButton h;
  
  private ImageButton i;
  
  private RelativeLayout j;
  
  private CharSequence k;
  
  private CharSequence l;
  
  private gsm m;
  
  private gsn n;
  
  private boolean o = false;
  
  private Context p;
  
  private final View.OnClickListener q = (View.OnClickListener)new gsj(this);
  
  public SearchViewAppBar(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public SearchViewAppBar(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SearchViewAppBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet);
    this.p = paramContext;
    d();
    a(paramAttributeSet, paramInt);
  }
  
  private void a(AttributeSet paramAttributeSet, int paramInt) {
    TypedArray typedArray = this.p.obtainStyledAttributes(paramAttributeSet, flv.MaterialSearchView, paramInt, 0);
    if (typedArray != null) {
      if (typedArray.hasValue(3))
        setBackground(typedArray.getDrawable(3)); 
      if (typedArray.hasValue(0))
        setTextColor(typedArray.getColor(0, 0)); 
      if (typedArray.hasValue(1))
        setHintTextColor(typedArray.getColor(1, 0)); 
      if (typedArray.hasValue(2))
        setHint(typedArray.getString(2)); 
      if (typedArray.hasValue(4))
        setCloseIcon(typedArray.getDrawable(4)); 
      if (typedArray.hasValue(5))
        setBackIcon(typedArray.getDrawable(5)); 
      typedArray.recycle();
    } 
  }
  
  private void a(CharSequence paramCharSequence) {
    boolean bool;
    Editable editable = this.g.getText();
    this.l = (CharSequence)editable;
    if (!TextUtils.isEmpty((CharSequence)editable)) {
      bool = true;
    } else {
      bool = false;
    } 
    if (bool) {
      this.i.setVisibility(0);
    } else {
      this.i.setVisibility(8);
    } 
    if (this.m != null && !TextUtils.equals(paramCharSequence, this.k))
      this.m.b(paramCharSequence.toString()); 
    this.k = paramCharSequence.toString();
  }
  
  private void d() {
    LayoutInflater.from(this.p).inflate(2130969479, (ViewGroup)this, true);
    this.e = findViewById(2131759480);
    this.j = (RelativeLayout)this.e.findViewById(2131759482);
    this.g = (EditText)this.e.findViewById(2131759483);
    this.h = (ImageButton)this.e.findViewById(2131759484);
    this.i = (ImageButton)this.e.findViewById(2131759485);
    this.f = this.e.findViewById(2131759481);
    this.g.setOnClickListener(this.q);
    this.h.setOnClickListener(this.q);
    this.i.setOnClickListener(this.q);
    this.f.setOnClickListener(this.q);
    e();
    setAnimationDuration(gsb.b);
  }
  
  private void e() {
    this.g.setOnEditorActionListener((TextView.OnEditorActionListener)new gsg(this));
    this.g.addTextChangedListener((TextWatcher)new gsh(this));
    this.g.setOnFocusChangeListener((View.OnFocusChangeListener)new gsi(this));
  }
  
  private void f() {
    Editable editable = this.g.getText();
    if (editable != null && TextUtils.getTrimmedLength((CharSequence)editable) > 0 && (this.m == null || !this.m.a(editable.toString()))) {
      c();
      this.g.setText(null);
    } 
  }
  
  private void g() {
    gsl gsl = new gsl(this);
    if (Build.VERSION.SDK_INT >= 21) {
      this.e.setVisibility(0);
      gsb.a((View)this.j, (gsf)gsl);
      return;
    } 
    gsb.a(this.e, this.c, (gsf)gsl);
  }
  
  public void a(View paramView) {
    ((InputMethodManager)paramView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
  }
  
  public void a(boolean paramBoolean) {
    if (a())
      return; 
    this.g.setText(null);
    this.g.requestFocus();
    if (paramBoolean) {
      g();
    } else {
      this.e.setVisibility(0);
      if (this.n != null)
        this.n.a(); 
    } 
    this.b = true;
  }
  
  public boolean a() {
    return this.b;
  }
  
  public void b() {
    a(true);
  }
  
  public void b(View paramView) {
    if (Build.VERSION.SDK_INT <= 10 && paramView.hasFocus())
      paramView.clearFocus(); 
    paramView.requestFocus();
    ((InputMethodManager)paramView.getContext().getSystemService("input_method")).showSoftInput(paramView, 0);
  }
  
  public void c() {
    if (!a())
      return; 
    this.g.setText(null);
    clearFocus();
    this.e.setVisibility(8);
    if (this.n != null)
      this.n.b(); 
    this.b = false;
  }
  
  public void clearFocus() {
    this.d = true;
    a((View)this);
    super.clearFocus();
    this.g.clearFocus();
    this.d = false;
  }
  
  public boolean requestFocus(int paramInt, Rect paramRect) {
    return (!this.d && isFocusable()) ? this.g.requestFocus(paramInt, paramRect) : false;
  }
  
  public void setAnimationDuration(int paramInt) {
    this.c = paramInt;
  }
  
  public void setBackIcon(Drawable paramDrawable) {
    this.h.setImageDrawable(paramDrawable);
  }
  
  public void setBackground(Drawable paramDrawable) {
    if (Build.VERSION.SDK_INT >= 16) {
      this.j.setBackground(paramDrawable);
      return;
    } 
    this.j.setBackgroundDrawable(paramDrawable);
  }
  
  public void setBackgroundColor(int paramInt) {
    this.j.setBackgroundColor(paramInt);
  }
  
  public void setCloseIcon(Drawable paramDrawable) {
    this.i.setImageDrawable(paramDrawable);
  }
  
  public void setCursorDrawable(int paramInt) {
    try {
      Field field = TextView.class.getDeclaredField("mCursorDrawableRes");
      field.setAccessible(true);
      field.set(this.g, Integer.valueOf(paramInt));
      return;
    } catch (Exception exception) {
      Log.e("SearchView", exception.toString());
      return;
    } 
  }
  
  public void setHint(CharSequence paramCharSequence) {
    this.g.setHint(paramCharSequence);
  }
  
  public void setHintTextColor(int paramInt) {
    this.g.setHintTextColor(paramInt);
  }
  
  public void setMenuItem(MenuItem paramMenuItem) {
    this.a = paramMenuItem;
    this.a.setOnMenuItemClickListener((MenuItem.OnMenuItemClickListener)new gsk(this));
  }
  
  public void setOnQueryTextListener(gsm paramgsm) {
    this.m = paramgsm;
  }
  
  public void setOnSearchViewListener(gsn paramgsn) {
    this.n = paramgsn;
  }
  
  public void setQuery(CharSequence paramCharSequence, boolean paramBoolean) {
    this.g.setText(paramCharSequence);
    if (paramCharSequence != null) {
      this.g.setSelection(this.g.length());
      this.l = paramCharSequence;
    } 
    if (paramBoolean && !TextUtils.isEmpty(paramCharSequence))
      f(); 
  }
  
  public void setSubmitOnClick(boolean paramBoolean) {
    this.o = paramBoolean;
  }
  
  public void setTextColor(int paramInt) {
    this.g.setTextColor(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\appbarsearchview\SearchViewAppBar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */