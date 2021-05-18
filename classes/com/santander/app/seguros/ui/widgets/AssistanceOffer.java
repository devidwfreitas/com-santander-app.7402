package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.List;
import krj;
import krl;
import mas;
import mat;
import mau;
import mav;
import maw;
import max;
import may;
import mhj;

public class AssistanceOffer extends LinearLayout {
  private may a;
  
  private View b;
  
  private Context c;
  
  private SegurosTextView d;
  
  private SegurosTextView e;
  
  private SegurosTextView f;
  
  private SegurosTextView g;
  
  private ImageView h;
  
  private ImageView i;
  
  private ImageView j;
  
  private LinearLayout k;
  
  private LinearLayout l;
  
  private LinearLayout m;
  
  private SegurosTextView n;
  
  public AssistanceOffer(Context paramContext) {
    super(paramContext);
    a(paramContext);
    b();
    a();
  }
  
  public AssistanceOffer(Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext);
    b();
    a();
  }
  
  public AssistanceOffer(Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
    b();
    a();
  }
  
  public AssistanceOffer(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext);
    b();
    a();
  }
  
  private Drawable a(String paramString, boolean paramBoolean) {
    krj krj = krj.valueOf(paramString);
    switch (max.a[krj.ordinal()]) {
      default:
        return null;
      case 1:
        return paramBoolean ? getResources().getDrawable(2130838541) : getResources().getDrawable(2130838542);
      case 2:
        return paramBoolean ? getResources().getDrawable(2130838668) : getResources().getDrawable(2130838669);
      case 3:
        return paramBoolean ? getResources().getDrawable(2130838505) : getResources().getDrawable(2130838506);
      case 4:
        return paramBoolean ? getResources().getDrawable(2130838496) : getResources().getDrawable(2130838499);
      case 5:
        return paramBoolean ? getResources().getDrawable(2130838343) : getResources().getDrawable(2130838344);
      case 6:
        return paramBoolean ? getResources().getDrawable(2130838503) : getResources().getDrawable(2130838504);
      case 7:
        return paramBoolean ? getResources().getDrawable(2130838537) : getResources().getDrawable(2130838538);
      case 8:
        break;
    } 
    return paramBoolean ? getResources().getDrawable(2130838414) : getResources().getDrawable(2130838414);
  }
  
  private void a() {
    this.n.setText((CharSequence)mhj.a(this.c, "fonts/opensans_semibold.ttf", Integer.valueOf(ContextCompat.getColor(this.c, 2131624053)), getResources().getString(2131297116), new String[] { "benefícios" }));
  }
  
  private void a(Context paramContext) {
    this.b = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130968805, null);
    addView(this.b);
    this.c = paramContext;
  }
  
  private void b() {
    this.e = (SegurosTextView)findViewById(2131756254);
    this.f = (SegurosTextView)findViewById(2131756257);
    this.g = (SegurosTextView)findViewById(2131756260);
    this.h = (ImageView)findViewById(2131756253);
    this.i = (ImageView)findViewById(2131756256);
    this.j = (ImageView)findViewById(2131756259);
    this.k = (LinearLayout)findViewById(2131756252);
    this.l = (LinearLayout)findViewById(2131756255);
    this.m = (LinearLayout)findViewById(2131756258);
    this.d = (SegurosTextView)findViewById(2131756261);
    this.n = (SegurosTextView)findViewById(2131756251);
  }
  
  public void setInformations(List<krl> paramList) {
    Typeface typeface = Typeface.createFromAsset(getContext().getAssets(), "fonts/opensans_light.ttf");
    if (paramList != null) {
      if (paramList != null && paramList.size() == 3) {
        this.k.setVisibility(0);
        this.k.setVisibility(0);
        this.k.setVisibility(0);
        this.e.setText(((krl)paramList.get(0)).b());
        this.f.setText(((krl)paramList.get(1)).b());
        this.g.setText(((krl)paramList.get(2)).b());
        this.h.setImageDrawable(a(((krl)paramList.get(0)).a(), false));
        this.i.setImageDrawable(a(((krl)paramList.get(1)).a(), false));
        this.j.setImageDrawable(a(((krl)paramList.get(2)).a(), false));
        this.h.setOnClickListener((View.OnClickListener)new mas(this, paramList, typeface));
        this.i.setOnClickListener((View.OnClickListener)new mat(this, paramList, typeface));
        this.j.setOnClickListener((View.OnClickListener)new mau(this, paramList, typeface));
        return;
      } 
    } else {
      return;
    } 
    if (paramList != null && paramList.size() == 2) {
      this.k.setVisibility(0);
      this.l.setVisibility(0);
      this.m.setVisibility(8);
      this.e.setText(((krl)paramList.get(0)).b());
      this.f.setText(((krl)paramList.get(1)).b());
      this.h.setImageDrawable(a(((krl)paramList.get(0)).a(), false));
      this.i.setImageDrawable(a(((krl)paramList.get(1)).a(), false));
      this.h.setOnClickListener((View.OnClickListener)new mav(this, paramList, typeface));
      this.i.setOnClickListener((View.OnClickListener)new maw(this, paramList, typeface));
      return;
    } 
  }
  
  public void setListener(may parammay) {
    this.a = parammay;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\AssistanceOffer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */