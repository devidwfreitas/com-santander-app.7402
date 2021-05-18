package br.com.santander.uisdk.error;

import als;
import alu;
import alx;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import ani;
import ann;
import java.util.Arrays;

public class SantanderErrorView extends NestedScrollView {
  private Context a;
  
  private ImageView b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private LinearLayout f;
  
  private Button g;
  
  private LinearLayout h;
  
  private RecyclerView i;
  
  private ani j;
  
  private View.OnClickListener k;
  
  public SantanderErrorView(@NonNull Context paramContext) {
    super(paramContext);
    this.a = paramContext;
    a();
    a((AttributeSet)null, 0, 0);
  }
  
  public SantanderErrorView(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    this.a = paramContext;
    a();
    a(paramAttributeSet, 0, 0);
  }
  
  public SantanderErrorView(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    this.a = paramContext;
    a();
    a(paramAttributeSet, paramInt, paramInt);
  }
  
  private void a() {
    LayoutInflater.from(this.a).inflate(alu.santander_view_error, (ViewGroup)this, true);
    setBackgroundColor(ContextCompat.getColor(this.a, 17170443));
    setFillViewport(true);
    setLayoutParams((ViewGroup.LayoutParams)new FrameLayout.LayoutParams(-1, -1));
    this.b = (ImageView)findViewById(als.views_error_image);
    this.c = (TextView)findViewById(als.views_error_title);
    this.d = (TextView)findViewById(als.views_error_sub_title);
    this.e = (TextView)findViewById(als.view_error_options_title);
    this.f = (LinearLayout)findViewById(als.view_error_container_button);
    this.g = (Button)findViewById(als.view_error_button_event);
    this.g.setOnClickListener((View.OnClickListener)new ann(this));
    this.h = (LinearLayout)findViewById(als.view_error_container_options);
    this.i = (RecyclerView)findViewById(als.view_error_recycler_view);
    this.j = new ani();
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.a);
    this.i.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.i.setNestedScrollingEnabled(false);
    this.i.setItemAnimator((RecyclerView.ItemAnimator)new DefaultItemAnimator());
    this.i.setAdapter((RecyclerView.Adapter)this.j);
  }
  
  private void a(AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    TypedArray typedArray = this.a.obtainStyledAttributes(paramAttributeSet, alx.SantanderErrorView, paramInt1, paramInt2);
    if (typedArray != null) {
      setScreenType(typedArray.getInt(alx.SantanderErrorView_screen_error_type, 1000));
      if (typedArray.hasValue(alx.SantanderErrorView_screen_error_icon))
        setIcon(typedArray.getResourceId(alx.SantanderErrorView_screen_error_icon, 0)); 
      if (typedArray.hasValue(alx.SantanderErrorView_screen_error_title))
        setTextTitle(typedArray.getString(alx.SantanderErrorView_screen_error_title)); 
      if (typedArray.hasValue(alx.SantanderErrorView_screen_error_sub_title))
        setTextSubTitle(typedArray.getString(alx.SantanderErrorView_screen_error_sub_title)); 
      if (typedArray.hasValue(alx.SantanderErrorView_screen_error_button_title))
        setTextButton(typedArray.getString(alx.SantanderErrorView_screen_error_button_title)); 
      typedArray.recycle();
    } 
  }
  
  private void b() {
    this.d.setVisibility(0);
    this.f.setVisibility(0);
    this.g.setVisibility(0);
    this.h.setVisibility(0);
    this.e.setVisibility(8);
    this.i.setVisibility(0);
  }
  
  public void a(@NonNull SantanderErrorItem... paramVarArgs) {
    this.j.a(Arrays.asList(paramVarArgs));
    if (this.j.getItemCount() > 1)
      this.e.setVisibility(0); 
  }
  
  public void setIcon(@DrawableRes int paramInt) {
    this.b.setImageResource(paramInt);
  }
  
  public void setOnButtonClickListener(View.OnClickListener paramOnClickListener) {
    this.k = paramOnClickListener;
  }
  
  public void setScreenType(int paramInt) {
    b();
    switch (paramInt) {
      default:
        return;
      case 1003:
        this.h.setVisibility(8);
        this.i.setVisibility(8);
        return;
      case 1002:
        this.f.setVisibility(8);
        this.g.setVisibility(8);
        return;
      case 1001:
        this.f.setVisibility(8);
        this.g.setVisibility(8);
        this.h.setVisibility(8);
        this.i.setVisibility(8);
        return;
      case 1000:
        this.d.setVisibility(8);
        this.f.setVisibility(8);
        this.g.setVisibility(8);
        this.h.setVisibility(8);
        this.i.setVisibility(8);
        return;
      case 1004:
        break;
    } 
    b();
  }
  
  public void setTextButton(CharSequence paramCharSequence) {
    this.g.setText(paramCharSequence);
  }
  
  public void setTextSubTitle(CharSequence paramCharSequence) {
    this.d.setText(paramCharSequence);
  }
  
  public void setTextTitle(CharSequence paramCharSequence) {
    this.c.setText(paramCharSequence);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santande\\uisdk\error\SantanderErrorView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */