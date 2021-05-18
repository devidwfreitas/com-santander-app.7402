import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.annotation.ColorRes;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;

public final class aoa {
  private static final String a = "SantanderTooltip";
  
  private final boolean b;
  
  private final boolean c;
  
  private final int d;
  
  private final float e;
  
  private final View f;
  
  private final PopupWindow g;
  
  private aok h;
  
  private aon i;
  
  private aom j;
  
  private aol k;
  
  private LinearLayout l;
  
  private ImageView m;
  
  private final View.OnClickListener n = new aod(this);
  
  private final View.OnLongClickListener o = new aoe(this);
  
  private final View.OnTouchListener p = new aof(this);
  
  private final View.OnClickListener q = new aog(this);
  
  private final ViewTreeObserver.OnGlobalLayoutListener r = new aoh(this);
  
  private final View.OnAttachStateChangeListener s = new aoi(this);
  
  private aoa(aoj paramaoj) {
    this.b = aoj.a(paramaoj);
    this.c = aoj.b(paramaoj);
    this.d = aoj.c(paramaoj);
    this.e = aoj.d(paramaoj);
    this.f = aoj.e(paramaoj);
    this.h = aoj.f(paramaoj);
    this.i = aoj.g(paramaoj);
    this.j = aoj.h(paramaoj);
    this.k = aoj.i(paramaoj);
    this.g = new PopupWindow(aoj.j(paramaoj));
    this.g.setBackgroundDrawable(null);
    this.g.setClippingEnabled(false);
    this.g.setWidth(-2);
    this.g.setHeight(-2);
    this.g.setContentView(a(paramaoj));
    this.g.setOutsideTouchable(aoj.a(paramaoj));
    this.g.setOnDismissListener(new aob(this));
  }
  
  private View a(aoj paramaoj) {
    // Byte code:
    //   0: new android/graphics/drawable/GradientDrawable
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #5
    //   9: aload #5
    //   11: aload_1
    //   12: invokestatic k : (Laoj;)I
    //   15: invokevirtual setColor : (I)V
    //   18: aload #5
    //   20: aload_1
    //   21: invokestatic l : (Laoj;)F
    //   24: invokestatic b : (F)F
    //   27: invokevirtual setCornerRadius : (F)V
    //   30: aload_1
    //   31: invokestatic m : (Laoj;)F
    //   34: invokestatic b : (F)F
    //   37: f2i
    //   38: istore_2
    //   39: new android/widget/TextView
    //   42: dup
    //   43: aload_1
    //   44: invokestatic j : (Laoj;)Landroid/content/Context;
    //   47: invokespecial <init> : (Landroid/content/Context;)V
    //   50: astore #6
    //   52: aload #6
    //   54: aload_1
    //   55: invokestatic n : (Laoj;)I
    //   58: invokestatic setTextAppearance : (Landroid/widget/TextView;I)V
    //   61: aload #6
    //   63: aload_1
    //   64: invokestatic o : (Laoj;)Ljava/lang/CharSequence;
    //   67: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   70: aload #6
    //   72: aload_1
    //   73: invokestatic p : (Laoj;)F
    //   76: invokestatic b : (F)F
    //   79: f2i
    //   80: invokevirtual setMaxWidth : (I)V
    //   83: aload_1
    //   84: invokestatic q : (Laoj;)I
    //   87: ldc 8388611
    //   89: if_icmpne -> 623
    //   92: iconst_0
    //   93: istore_3
    //   94: aload_1
    //   95: invokestatic q : (Laoj;)I
    //   98: ldc 8388611
    //   100: if_icmpne -> 628
    //   103: iload_2
    //   104: istore #4
    //   106: aload #6
    //   108: iload_3
    //   109: iload_2
    //   110: iload #4
    //   112: iload_2
    //   113: invokevirtual setPadding : (IIII)V
    //   116: aload #6
    //   118: aload_1
    //   119: invokestatic r : (Laoj;)F
    //   122: aload_1
    //   123: invokestatic s : (Laoj;)F
    //   126: invokevirtual setLineSpacing : (FF)V
    //   129: aload #6
    //   131: aload_1
    //   132: invokestatic t : (Laoj;)Landroid/graphics/Typeface;
    //   135: aload_1
    //   136: invokestatic u : (Laoj;)I
    //   139: invokevirtual setTypeface : (Landroid/graphics/Typeface;I)V
    //   142: aload_1
    //   143: invokestatic v : (Laoj;)F
    //   146: fconst_0
    //   147: fcmpl
    //   148: iflt -> 161
    //   151: aload #6
    //   153: iconst_0
    //   154: aload_1
    //   155: invokestatic v : (Laoj;)F
    //   158: invokevirtual setTextSize : (IF)V
    //   161: aload_1
    //   162: invokestatic w : (Laoj;)Landroid/content/res/ColorStateList;
    //   165: ifnull -> 177
    //   168: aload #6
    //   170: aload_1
    //   171: invokestatic w : (Laoj;)Landroid/content/res/ColorStateList;
    //   174: invokevirtual setTextColor : (Landroid/content/res/ColorStateList;)V
    //   177: new android/widget/LinearLayout
    //   180: dup
    //   181: aload_1
    //   182: invokestatic j : (Laoj;)Landroid/content/Context;
    //   185: invokespecial <init> : (Landroid/content/Context;)V
    //   188: astore #7
    //   190: aload #7
    //   192: new android/view/ViewGroup$LayoutParams
    //   195: dup
    //   196: bipush #-2
    //   198: bipush #-2
    //   200: invokespecial <init> : (II)V
    //   203: invokevirtual setLayoutParams : (Landroid/view/ViewGroup$LayoutParams;)V
    //   206: aload #7
    //   208: iconst_0
    //   209: invokevirtual setOrientation : (I)V
    //   212: aload #7
    //   214: bipush #16
    //   216: invokevirtual setGravity : (I)V
    //   219: aload #7
    //   221: aload #5
    //   223: invokevirtual setBackground : (Landroid/graphics/drawable/Drawable;)V
    //   226: new android/widget/LinearLayout$LayoutParams
    //   229: dup
    //   230: bipush #-2
    //   232: bipush #-2
    //   234: fconst_0
    //   235: invokespecial <init> : (IIF)V
    //   238: astore #5
    //   240: aload #5
    //   242: bipush #17
    //   244: putfield gravity : I
    //   247: aload #6
    //   249: aload #5
    //   251: invokevirtual setLayoutParams : (Landroid/view/ViewGroup$LayoutParams;)V
    //   254: aload_0
    //   255: new android/widget/ImageView
    //   258: dup
    //   259: aload_1
    //   260: invokestatic j : (Laoj;)Landroid/content/Context;
    //   263: invokespecial <init> : (Landroid/content/Context;)V
    //   266: putfield m : Landroid/widget/ImageView;
    //   269: aload_0
    //   270: getfield m : Landroid/widget/ImageView;
    //   273: aload_1
    //   274: invokestatic x : (Laoj;)Landroid/graphics/drawable/Drawable;
    //   277: invokevirtual setImageDrawable : (Landroid/graphics/drawable/Drawable;)V
    //   280: aload_0
    //   281: getfield d : I
    //   284: bipush #48
    //   286: if_icmpeq -> 298
    //   289: aload_0
    //   290: getfield d : I
    //   293: bipush #80
    //   295: if_icmpne -> 634
    //   298: new android/widget/LinearLayout$LayoutParams
    //   301: dup
    //   302: aload_1
    //   303: invokestatic y : (Laoj;)F
    //   306: f2i
    //   307: aload_1
    //   308: invokestatic z : (Laoj;)F
    //   311: f2i
    //   312: fconst_0
    //   313: invokespecial <init> : (IIF)V
    //   316: astore #5
    //   318: aload #5
    //   320: bipush #17
    //   322: putfield gravity : I
    //   325: aload_0
    //   326: getfield m : Landroid/widget/ImageView;
    //   329: aload #5
    //   331: invokevirtual setLayoutParams : (Landroid/view/ViewGroup$LayoutParams;)V
    //   334: aload_0
    //   335: new android/widget/LinearLayout
    //   338: dup
    //   339: aload_1
    //   340: invokestatic j : (Laoj;)Landroid/content/Context;
    //   343: invokespecial <init> : (Landroid/content/Context;)V
    //   346: putfield l : Landroid/widget/LinearLayout;
    //   349: aload_0
    //   350: getfield l : Landroid/widget/LinearLayout;
    //   353: new android/view/ViewGroup$LayoutParams
    //   356: dup
    //   357: bipush #-2
    //   359: bipush #-2
    //   361: invokespecial <init> : (II)V
    //   364: invokevirtual setLayoutParams : (Landroid/view/ViewGroup$LayoutParams;)V
    //   367: aload_0
    //   368: getfield l : Landroid/widget/LinearLayout;
    //   371: astore #5
    //   373: aload_0
    //   374: getfield d : I
    //   377: ldc 8388611
    //   379: if_icmpeq -> 392
    //   382: aload_0
    //   383: getfield d : I
    //   386: ldc_w 8388613
    //   389: if_icmpne -> 657
    //   392: iconst_0
    //   393: istore_2
    //   394: aload #5
    //   396: iload_2
    //   397: invokevirtual setOrientation : (I)V
    //   400: ldc_w 5.0
    //   403: invokestatic b : (F)F
    //   406: f2i
    //   407: istore_2
    //   408: aload_0
    //   409: getfield d : I
    //   412: lookupswitch default -> 456, 48 -> 676, 80 -> 676, 8388611 -> 662, 8388613 -> 690
    //   456: new android/widget/ImageView
    //   459: dup
    //   460: aload_1
    //   461: invokestatic j : (Laoj;)Landroid/content/Context;
    //   464: invokespecial <init> : (Landroid/content/Context;)V
    //   467: astore #5
    //   469: ldc_w 17.0
    //   472: invokestatic b : (F)F
    //   475: f2i
    //   476: istore_2
    //   477: aload #5
    //   479: getstatic alr.ic_tooltip_close : I
    //   482: invokevirtual setImageResource : (I)V
    //   485: aload #5
    //   487: iload_2
    //   488: iload_2
    //   489: iload_2
    //   490: iload_2
    //   491: invokevirtual setPadding : (IIII)V
    //   494: aload #5
    //   496: aload_0
    //   497: getfield q : Landroid/view/View$OnClickListener;
    //   500: invokevirtual setOnClickListener : (Landroid/view/View$OnClickListener;)V
    //   503: aload_1
    //   504: invokestatic q : (Laoj;)I
    //   507: ldc 8388611
    //   509: if_icmpne -> 704
    //   512: aload_1
    //   513: invokestatic A : (Laoj;)Z
    //   516: ifeq -> 526
    //   519: aload #7
    //   521: aload #5
    //   523: invokevirtual addView : (Landroid/view/View;)V
    //   526: aload #7
    //   528: aload #6
    //   530: invokevirtual addView : (Landroid/view/View;)V
    //   533: aload_0
    //   534: getfield d : I
    //   537: bipush #48
    //   539: if_icmpeq -> 551
    //   542: aload_0
    //   543: getfield d : I
    //   546: ldc 8388611
    //   548: if_icmpne -> 728
    //   551: aload_0
    //   552: getfield l : Landroid/widget/LinearLayout;
    //   555: aload #7
    //   557: invokevirtual addView : (Landroid/view/View;)V
    //   560: aload_0
    //   561: getfield l : Landroid/widget/LinearLayout;
    //   564: aload_0
    //   565: getfield m : Landroid/widget/ImageView;
    //   568: invokevirtual addView : (Landroid/view/View;)V
    //   571: aload_0
    //   572: getfield l : Landroid/widget/LinearLayout;
    //   575: aload_0
    //   576: getfield n : Landroid/view/View$OnClickListener;
    //   579: invokevirtual setOnClickListener : (Landroid/view/View$OnClickListener;)V
    //   582: aload_0
    //   583: getfield l : Landroid/widget/LinearLayout;
    //   586: aload_0
    //   587: getfield o : Landroid/view/View$OnLongClickListener;
    //   590: invokevirtual setOnLongClickListener : (Landroid/view/View$OnLongClickListener;)V
    //   593: aload_1
    //   594: invokestatic a : (Laoj;)Z
    //   597: ifne -> 607
    //   600: aload_1
    //   601: invokestatic b : (Laoj;)Z
    //   604: ifeq -> 618
    //   607: aload_0
    //   608: getfield l : Landroid/widget/LinearLayout;
    //   611: aload_0
    //   612: getfield p : Landroid/view/View$OnTouchListener;
    //   615: invokevirtual setOnTouchListener : (Landroid/view/View$OnTouchListener;)V
    //   618: aload_0
    //   619: getfield l : Landroid/widget/LinearLayout;
    //   622: areturn
    //   623: iload_2
    //   624: istore_3
    //   625: goto -> 94
    //   628: iconst_0
    //   629: istore #4
    //   631: goto -> 106
    //   634: new android/widget/LinearLayout$LayoutParams
    //   637: dup
    //   638: aload_1
    //   639: invokestatic z : (Laoj;)F
    //   642: f2i
    //   643: aload_1
    //   644: invokestatic y : (Laoj;)F
    //   647: f2i
    //   648: fconst_0
    //   649: invokespecial <init> : (IIF)V
    //   652: astore #5
    //   654: goto -> 318
    //   657: iconst_1
    //   658: istore_2
    //   659: goto -> 394
    //   662: aload_0
    //   663: getfield l : Landroid/widget/LinearLayout;
    //   666: iconst_0
    //   667: iconst_0
    //   668: iload_2
    //   669: iconst_0
    //   670: invokevirtual setPadding : (IIII)V
    //   673: goto -> 456
    //   676: aload_0
    //   677: getfield l : Landroid/widget/LinearLayout;
    //   680: iload_2
    //   681: iconst_0
    //   682: iload_2
    //   683: iconst_0
    //   684: invokevirtual setPadding : (IIII)V
    //   687: goto -> 456
    //   690: aload_0
    //   691: getfield l : Landroid/widget/LinearLayout;
    //   694: iload_2
    //   695: iconst_0
    //   696: iconst_0
    //   697: iconst_0
    //   698: invokevirtual setPadding : (IIII)V
    //   701: goto -> 456
    //   704: aload #7
    //   706: aload #6
    //   708: invokevirtual addView : (Landroid/view/View;)V
    //   711: aload_1
    //   712: invokestatic A : (Laoj;)Z
    //   715: ifeq -> 533
    //   718: aload #7
    //   720: aload #5
    //   722: invokevirtual addView : (Landroid/view/View;)V
    //   725: goto -> 533
    //   728: aload_0
    //   729: getfield l : Landroid/widget/LinearLayout;
    //   732: aload_0
    //   733: getfield m : Landroid/widget/ImageView;
    //   736: invokevirtual addView : (Landroid/view/View;)V
    //   739: aload_0
    //   740: getfield l : Landroid/widget/LinearLayout;
    //   743: aload #7
    //   745: invokevirtual addView : (Landroid/view/View;)V
    //   748: goto -> 571
  }
  
  public static aoa a(View paramView, String paramString) {
    return a(paramView, paramString, 80);
  }
  
  public static aoa a(View paramView, String paramString, int paramInt) {
    return a(paramView, paramString, paramInt, alp.santander_tooltip, 17170443);
  }
  
  public static aoa a(View paramView, String paramString, int paramInt1, @ColorRes int paramInt2, @ColorRes int paramInt3) {
    return (new aoj(paramView, alw.Santander_TooltipDefault)).a(paramString).i(paramInt1).a(paramView.getResources().getColor(paramInt2)).l(paramView.getResources().getColor(paramInt3)).a();
  }
  
  public static aoa a(View paramView, String paramString, int paramInt1, @ColorRes int paramInt2, @ColorRes int paramInt3, boolean paramBoolean) {
    return (new aoj(paramView, alw.Santander_TooltipDefault)).a(paramString).i(paramInt1).a(paramView.getResources().getColor(paramInt2)).l(paramView.getResources().getColor(paramInt3)).a(paramBoolean).a();
  }
  
  public static aoa a(View paramView, String paramString, int paramInt, boolean paramBoolean) {
    return a(paramView, paramString, paramInt, alp.santander_tooltip, 17170443, paramBoolean);
  }
  
  private PointF d() {
    PointF pointF1 = new PointF();
    RectF rectF = aoo.a(this.f);
    PointF pointF2 = new PointF(rectF.centerX(), rectF.centerY());
    switch (this.d) {
      default:
        return pointF1;
      case 8388611:
        pointF1.x = rectF.left - this.l.getWidth() - this.e;
        pointF2.y -= this.l.getHeight() / 2.0F;
        return pointF1;
      case 8388613:
        pointF1.x = rectF.right + this.e;
        pointF2.y -= this.l.getHeight() / 2.0F;
        return pointF1;
      case 48:
        pointF2.x -= this.l.getWidth() / 2.0F;
        pointF1.y = rectF.top - this.l.getHeight() - this.e;
        return pointF1;
      case 80:
        break;
    } 
    pointF2.x -= this.l.getWidth() / 2.0F;
    pointF1.y = rectF.bottom + this.e;
    return pointF1;
  }
  
  private boolean e() {
    Rect rect = new Rect();
    this.f.getRootView().getHitRect(rect);
    return (this.f.getGlobalVisibleRect(rect) && this.f.getHeight() == rect.height() && this.f.getWidth() == rect.width());
  }
  
  private void f() {
    float f1;
    float f2;
    byte b = -1;
    RectF rectF1 = aoo.a(this.f);
    RectF rectF2 = aoo.a((View)this.l);
    if (this.d == 80 || this.d == 48) {
      f2 = this.l.getPaddingLeft() + aoo.b(2.0F);
      float f = rectF2.width() / 2.0F - this.m.getWidth() / 2.0F - rectF2.centerX() - rectF1.centerX();
      if (f > f2) {
        f1 = f;
        if (this.m.getWidth() + f + f2 > rectF2.width())
          f1 = rectF2.width() - this.m.getWidth() - f2; 
      } else {
        f1 = f2;
      } 
      f2 = this.m.getTop();
      if (this.d == 48) {
        b = -1;
      } else {
        b = 1;
      } 
      f = b;
      f += f2;
      f2 = f1;
      f1 = f;
    } else {
      f2 = this.l.getPaddingTop() + aoo.b(2.0F);
      float f = rectF2.height() / 2.0F - this.m.getHeight() / 2.0F - rectF2.centerY() - rectF1.centerY();
      if (f > f2) {
        f1 = f;
        if (this.m.getHeight() + f + f2 > rectF2.height())
          f1 = rectF2.height() - this.m.getHeight() - f2; 
      } else {
        f1 = f2;
      } 
      f2 = this.m.getLeft();
      if (this.d != 8388611)
        b = 1; 
      f2 += b;
    } 
    this.m.setX(f2);
    this.m.setY(f1);
  }
  
  public void a(aok paramaok) {
    this.h = paramaok;
  }
  
  public void a(aol paramaol) {
    this.k = paramaol;
  }
  
  public void a(aom paramaom) {
    this.j = paramaom;
  }
  
  public void a(aon paramaon) {
    this.i = paramaon;
  }
  
  public boolean a() {
    return this.g.isShowing();
  }
  
  public void b() {
    if (!a()) {
      this.l.getViewTreeObserver().addOnGlobalLayoutListener(this.r);
      this.f.addOnAttachStateChangeListener(this.s);
      this.f.post(new aoc(this));
    } 
  }
  
  public void c() {
    this.g.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aoa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */