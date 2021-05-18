package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import mci;
import mcj;
import mck;
import mcl;

public class PlanChoiceView extends LinearLayout {
  private View a;
  
  private Context b;
  
  public PlanChoiceView(Context paramContext) {
    super(paramContext);
    a(paramContext);
  }
  
  public PlanChoiceView(Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public PlanChoiceView(Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  public PlanChoiceView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext);
  }
  
  private void a(Context paramContext) {
    this.a = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130969414, null);
    addView(this.a);
    this.b = paramContext;
  }
  
  private void a(mcl parammcl) {
    LinearLayout linearLayout1 = (LinearLayout)this.a.findViewById(2131757374);
    LinearLayout linearLayout2 = (LinearLayout)this.a.findViewById(2131757375);
    ImageView imageView3 = (ImageView)this.a.findViewById(2131759243);
    ImageView imageView1 = (ImageView)this.a.findViewById(2131759249);
    ImageView imageView4 = (ImageView)this.a.findViewById(2131759239);
    ImageView imageView2 = (ImageView)this.a.findViewById(2131759245);
    mck mck2 = new mck(this, 2130838051, 2130839020, imageView3, imageView4, (View.OnClickListener)new mci(this, parammcl));
    mck mck1 = new mck(this, 2130838051, 2130839020, imageView1, imageView2, (View.OnClickListener)new mcj(this, parammcl));
    linearLayout1.setOnClickListener((View.OnClickListener)mck2);
    linearLayout2.setOnClickListener((View.OnClickListener)mck1);
  }
  
  public void setOnChoiceClickListener(mcl parammcl) {
    a(parammcl);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\PlanChoiceView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */