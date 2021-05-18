package com.facebook.share.widget;

import android.app.Activity;
import android.app.Fragment;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.IntentFilter;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.content.LocalBroadcastManager;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import bhp;
import bjr;
import bjs;
import bjz;
import bpa;
import bqq;
import bww;
import bxo;
import byc;
import cch;
import cci;
import ccj;
import cck;
import ccl;
import ccm;
import ccn;
import cco;
import ccp;
import com.facebook.share.internal.LikeBoxCountView;
import com.facebook.share.internal.LikeButton;

public class LikeView extends FrameLayout {
  private static final int a = -1;
  
  private String b;
  
  private ccn c;
  
  private LinearLayout d;
  
  private LikeButton e;
  
  private LikeBoxCountView f;
  
  private TextView g;
  
  private bww h;
  
  private cco i;
  
  private BroadcastReceiver j;
  
  private ccl k;
  
  private ccp l = ccp.DEFAULT;
  
  private cck m = cck.DEFAULT;
  
  private ccj n = ccj.DEFAULT;
  
  private int o = -1;
  
  private int p;
  
  private int q;
  
  private bpa r;
  
  private boolean s;
  
  public LikeView(Context paramContext) {
    super(paramContext);
    a(paramContext);
  }
  
  public LikeView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
    a(paramContext);
  }
  
  private void a(Context paramContext) {
    this.p = getResources().getDimensionPixelSize(bjs.com_facebook_likeview_edge_padding);
    this.q = getResources().getDimensionPixelSize(bjs.com_facebook_likeview_internal_padding);
    if (this.o == -1)
      this.o = getResources().getColor(bjr.com_facebook_likeview_text_color); 
    setBackgroundColor(0);
    this.d = new LinearLayout(paramContext);
    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
    this.d.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    b(paramContext);
    c(paramContext);
    d(paramContext);
    this.d.addView((View)this.e);
    this.d.addView((View)this.g);
    this.d.addView((View)this.f);
    addView((View)this.d);
    a(this.b, this.c);
    f();
  }
  
  private void a(AttributeSet paramAttributeSet) {
    if (paramAttributeSet != null && getContext() != null) {
      TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, bjz.com_facebook_like_view);
      if (typedArray != null) {
        this.b = bqq.a(typedArray.getString(bjz.com_facebook_like_view_com_facebook_object_id), null);
        this.c = ccn.fromInt(typedArray.getInt(bjz.com_facebook_like_view_com_facebook_object_type, ccn.DEFAULT.getValue()));
        this.l = ccp.fromInt(typedArray.getInt(bjz.com_facebook_like_view_com_facebook_style, ccp.access$000(ccp.DEFAULT)));
        if (this.l == null)
          throw new IllegalArgumentException("Unsupported value for LikeView 'style'"); 
        this.n = ccj.fromInt(typedArray.getInt(bjz.com_facebook_like_view_com_facebook_auxiliary_view_position, ccj.access$100(ccj.DEFAULT)));
        if (this.n == null)
          throw new IllegalArgumentException("Unsupported value for LikeView 'auxiliary_view_position'"); 
        this.m = cck.fromInt(typedArray.getInt(bjz.com_facebook_like_view_com_facebook_horizontal_alignment, cck.access$200(cck.DEFAULT)));
        if (this.m == null)
          throw new IllegalArgumentException("Unsupported value for LikeView 'horizontal_alignment'"); 
        this.o = typedArray.getColor(bjz.com_facebook_like_view_com_facebook_foreground_color, -1);
        typedArray.recycle();
        return;
      } 
    } 
  }
  
  private void a(bww parambww) {
    this.h = parambww;
    this.j = (BroadcastReceiver)new ccm(this, null);
    LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(getContext());
    IntentFilter intentFilter = new IntentFilter();
    intentFilter.addAction("com.facebook.sdk.LikeActionController.UPDATED");
    intentFilter.addAction("com.facebook.sdk.LikeActionController.DID_ERROR");
    intentFilter.addAction("com.facebook.sdk.LikeActionController.DID_RESET");
    localBroadcastManager.registerReceiver(this.j, intentFilter);
  }
  
  private void a(String paramString, ccn paramccn) {
    e();
    this.b = paramString;
    this.c = paramccn;
    if (!bqq.a(paramString)) {
      this.k = new ccl(this, null);
      if (!isInEditMode()) {
        bww.a(paramString, paramccn, (bxo)this.k);
        return;
      } 
    } 
  }
  
  private void b() {
    if (this.h != null) {
      Activity activity = null;
      if (this.r == null)
        activity = c(); 
      this.h.a(activity, this.r, d());
    } 
  }
  
  private void b(Context paramContext) {
    boolean bool;
    if (this.h != null && this.h.d()) {
      bool = true;
    } else {
      bool = false;
    } 
    this.e = new LikeButton(paramContext, bool);
    this.e.setOnClickListener((View.OnClickListener)new cch(this));
    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
    this.e.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
  }
  
  private Activity c() {
    Context context;
    for (context = getContext(); !(context instanceof Activity) && context instanceof ContextWrapper; context = ((ContextWrapper)context).getBaseContext());
    if (context instanceof Activity)
      return (Activity)context; 
    throw new bhp("Unable to get Activity.");
  }
  
  private void c(Context paramContext) {
    this.g = new TextView(paramContext);
    this.g.setTextSize(0, getResources().getDimension(bjs.com_facebook_likeview_text_size));
    this.g.setMaxLines(2);
    this.g.setTextColor(this.o);
    this.g.setGravity(17);
    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
    this.g.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
  }
  
  private Bundle d() {
    Bundle bundle = new Bundle();
    bundle.putString("style", this.l.toString());
    bundle.putString("auxiliary_position", this.n.toString());
    bundle.putString("horizontal_alignment", this.m.toString());
    bundle.putString("object_id", bqq.a(this.b, ""));
    bundle.putString("object_type", this.c.toString());
    return bundle;
  }
  
  private void d(Context paramContext) {
    this.f = new LikeBoxCountView(paramContext);
    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
    this.f.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
  }
  
  private void e() {
    if (this.j != null) {
      LocalBroadcastManager.getInstance(getContext()).unregisterReceiver(this.j);
      this.j = null;
    } 
    if (this.k != null) {
      this.k.a();
      this.k = null;
    } 
    this.h = null;
  }
  
  private void f() {
    boolean bool;
    if (!this.s) {
      bool = true;
    } else {
      bool = false;
    } 
    if (this.h == null) {
      this.e.setSelected(false);
      this.g.setText(null);
      this.f.setText(null);
    } else {
      this.e.setSelected(this.h.d());
      this.g.setText(this.h.c());
      this.f.setText(this.h.b());
      bool &= this.h.e();
    } 
    super.setEnabled(bool);
    this.e.setEnabled(bool);
    g();
  }
  
  private void g() {
    LikeBoxCountView likeBoxCountView;
    boolean bool = true;
    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams)this.d.getLayoutParams();
    LinearLayout.LayoutParams layoutParams1 = (LinearLayout.LayoutParams)this.e.getLayoutParams();
    if (this.m == cck.LEFT) {
      b = 3;
    } else if (this.m == cck.CENTER) {
      b = 1;
    } else {
      b = 5;
    } 
    layoutParams.gravity = b | 0x30;
    layoutParams1.gravity = b;
    this.g.setVisibility(8);
    this.f.setVisibility(8);
    if (this.l == ccp.STANDARD && this.h != null && !bqq.a(this.h.c())) {
      TextView textView = this.g;
    } else if (this.l == ccp.BOX_COUNT && this.h != null && !bqq.a(this.h.b())) {
      h();
      likeBoxCountView = this.f;
    } else {
    
    } 
    likeBoxCountView.setVisibility(0);
    ((LinearLayout.LayoutParams)likeBoxCountView.getLayoutParams()).gravity = b;
    LinearLayout linearLayout = this.d;
    byte b = bool;
    if (this.n == ccj.INLINE)
      b = 0; 
    linearLayout.setOrientation(b);
    if (this.n == ccj.TOP || (this.n == ccj.INLINE && this.m == cck.RIGHT)) {
      this.d.removeView((View)this.e);
      this.d.addView((View)this.e);
    } else {
      this.d.removeView((View)likeBoxCountView);
      this.d.addView((View)likeBoxCountView);
    } 
    switch (cci.a[this.n.ordinal()]) {
      default:
        return;
      case 1:
        likeBoxCountView.setPadding(this.p, this.p, this.p, this.q);
        return;
      case 2:
        likeBoxCountView.setPadding(this.p, this.q, this.p, this.p);
        return;
      case 3:
        break;
    } 
    if (this.m == cck.RIGHT) {
      likeBoxCountView.setPadding(this.p, this.p, this.q, this.p);
      return;
    } 
    likeBoxCountView.setPadding(this.q, this.p, this.p, this.p);
  }
  
  private void h() {
    byc byc;
    switch (cci.a[this.n.ordinal()]) {
      default:
        return;
      case 1:
        this.f.setCaretPosition(byc.BOTTOM);
        return;
      case 2:
        this.f.setCaretPosition(byc.TOP);
        return;
      case 3:
        break;
    } 
    LikeBoxCountView likeBoxCountView = this.f;
    if (this.m == cck.RIGHT) {
      byc = byc.RIGHT;
    } else {
      byc = byc.LEFT;
    } 
    likeBoxCountView.setCaretPosition(byc);
  }
  
  public cco a() {
    return this.i;
  }
  
  protected void onDetachedFromWindow() {
    setObjectIdAndType((String)null, ccn.UNKNOWN);
    super.onDetachedFromWindow();
  }
  
  public void setAuxiliaryViewPosition(ccj paramccj) {
    if (paramccj == null)
      paramccj = ccj.DEFAULT; 
    if (this.n != paramccj) {
      this.n = paramccj;
      g();
    } 
  }
  
  public void setEnabled(boolean paramBoolean) {
    if (!paramBoolean) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    } 
    this.s = paramBoolean;
    f();
  }
  
  public void setForegroundColor(int paramInt) {
    if (this.o != paramInt)
      this.g.setTextColor(paramInt); 
  }
  
  public void setFragment(Fragment paramFragment) {
    this.r = new bpa(paramFragment);
  }
  
  public void setFragment(Fragment paramFragment) {
    this.r = new bpa(paramFragment);
  }
  
  public void setHorizontalAlignment(cck paramcck) {
    if (paramcck == null)
      paramcck = cck.DEFAULT; 
    if (this.m != paramcck) {
      this.m = paramcck;
      g();
    } 
  }
  
  public void setLikeViewStyle(ccp paramccp) {
    if (paramccp == null)
      paramccp = ccp.DEFAULT; 
    if (this.l != paramccp) {
      this.l = paramccp;
      g();
    } 
  }
  
  public void setObjectIdAndType(String paramString, ccn paramccn) {
    paramString = bqq.a(paramString, null);
    if (paramccn == null)
      paramccn = ccn.DEFAULT; 
    if (!bqq.a(paramString, this.b) || paramccn != this.c) {
      a(paramString, paramccn);
      f();
    } 
  }
  
  public void setOnErrorListener(cco paramcco) {
    this.i = paramcco;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\widget\LikeView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */