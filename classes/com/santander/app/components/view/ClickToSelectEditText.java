package com.santander.app.components.view;

import android.annotation.TargetApi;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import flv;
import gkz;
import goz;
import gpa;
import gpb;
import gpc;
import gpd;
import grz;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ClickToSelectEditText<T extends gkz> extends EditText {
  private List<T> a;
  
  private String[] b;
  
  private CharSequence c;
  
  private int d;
  
  private boolean e;
  
  private grz<T> f;
  
  private gpd<T> g;
  
  private T h;
  
  private List<T> i;
  
  public ClickToSelectEditText(Context paramContext) {
    super(paramContext);
    a((AttributeSet)null);
    this.c = getHint();
  }
  
  public ClickToSelectEditText(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    this.c = getHint();
    a(paramAttributeSet);
  }
  
  public ClickToSelectEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
    this.c = getHint();
  }
  
  @TargetApi(21)
  public ClickToSelectEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramAttributeSet);
    this.c = getHint();
  }
  
  private Dialog a(Dialog paramDialog) {
    paramDialog.requestWindowFeature(1);
    paramDialog.setContentView(2130968904);
    ((TextView)paramDialog.findViewById(2131756026)).setText(this.c);
    LinearLayout linearLayout = (LinearLayout)paramDialog.findViewById(2131756713);
    EditText editText = (EditText)paramDialog.findViewById(2131756714);
    Window window = paramDialog.getWindow();
    WindowManager.LayoutParams layoutParams = window.getAttributes();
    window.setBackgroundDrawable((Drawable)new ColorDrawable(0));
    layoutParams.gravity = 17;
    layoutParams.width = -1;
    layoutParams.height = -2;
    window.setAttributes(layoutParams);
    paramDialog.setCancelable(false);
    if (this.e)
      linearLayout.setVisibility(0); 
    ListView listView = (ListView)paramDialog.findViewById(2131756715);
    this.f = new grz(this.a, getContext());
    listView.setAdapter((ListAdapter)this.f);
    listView.setOnItemClickListener((AdapterView.OnItemClickListener)new gpa(this, paramDialog));
    ((Button)paramDialog.findViewById(2131756700)).setOnClickListener((View.OnClickListener)new gpb(this, paramDialog));
    editText.addTextChangedListener((TextWatcher)new gpc(this, editText));
    return paramDialog;
  }
  
  private void a(AttributeSet paramAttributeSet) {
    if (paramAttributeSet != null) {
      TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, flv.SantanderTextView);
      String str = typedArray.getString(0);
      if (str != null)
        setTypeface(Typeface.createFromAsset(getContext().getAssets(), "fonts/" + str)); 
      typedArray.recycle();
    } 
  }
  
  private void a(String paramString) {
    this.f.a(paramString);
  }
  
  private void b() {
    setOnClickListener((View.OnClickListener)new goz(this));
  }
  
  public T a() {
    return this.h;
  }
  
  protected void onDraw(Canvas paramCanvas) {
    super.onDraw(paramCanvas);
    setFocusable(false);
    setClickable(true);
  }
  
  public void setItems(List<T> paramList) {
    this.a = paramList;
    this.i = new ArrayList<T>(this.a);
    this.b = new String[paramList.size()];
    Iterator<T> iterator = this.a.iterator();
    for (int i = 0; iterator.hasNext(); i++) {
      gkz gkz1 = (gkz)iterator.next();
      this.b[i] = gkz1.Y();
    } 
    b();
  }
  
  public void setOnItemSelectedListener(gpd<T> paramgpd) {
    this.g = paramgpd;
  }
  
  public void setResLayoutDialog(int paramInt) {
    this.d = paramInt;
  }
  
  public void setSearch(boolean paramBoolean) {
    this.e = paramBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\ClickToSelectEditText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */