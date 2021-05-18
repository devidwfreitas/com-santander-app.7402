import android.graphics.PointF;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;

public final class abb {
  private final boolean a;
  
  private final boolean b;
  
  private final int c;
  
  private final float d;
  
  private final View e;
  
  private final PopupWindow f;
  
  private abm g;
  
  private abo h;
  
  private abn i;
  
  private LinearLayout j;
  
  private ImageView k;
  
  private final View.OnClickListener l = new abe(this);
  
  private final View.OnLongClickListener m = new abf(this);
  
  private final View.OnTouchListener n = new abg(this);
  
  private final ViewTreeObserver.OnGlobalLayoutListener o = new abh(this);
  
  private final ViewTreeObserver.OnGlobalLayoutListener p = new abi(this);
  
  private final View.OnAttachStateChangeListener q = new abj(this);
  
  private abb(abk paramabk) {
    this.a = abk.a(paramabk);
    this.b = abk.b(paramabk);
    this.c = abk.c(paramabk);
    this.d = abk.d(paramabk);
    this.e = abk.e(paramabk);
    this.g = abk.f(paramabk);
    this.h = abk.g(paramabk);
    this.i = abk.h(paramabk);
    this.f = new PopupWindow(abk.i(paramabk));
    this.f.setBackgroundDrawable(null);
    this.f.setClippingEnabled(false);
    this.f.setWidth(-2);
    this.f.setHeight(-2);
    this.f.setContentView(a(paramabk));
    this.f.setOutsideTouchable(abk.a(paramabk));
    this.f.setOnDismissListener(new abc(this));
  }
  
  private View a(abk paramabk) {
    // Byte code:
    //   0: new android/graphics/drawable/GradientDrawable
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore_3
    //   8: aload_3
    //   9: aload_1
    //   10: invokestatic j : (Labk;)I
    //   13: invokevirtual setColor : (I)V
    //   16: aload_3
    //   17: aload_1
    //   18: invokestatic k : (Labk;)F
    //   21: invokevirtual setCornerRadius : (F)V
    //   24: aload_1
    //   25: invokestatic l : (Labk;)F
    //   28: f2i
    //   29: istore_2
    //   30: new android/widget/TextView
    //   33: dup
    //   34: aload_1
    //   35: invokestatic i : (Labk;)Landroid/content/Context;
    //   38: invokespecial <init> : (Landroid/content/Context;)V
    //   41: astore #4
    //   43: aload #4
    //   45: aload_1
    //   46: invokestatic m : (Labk;)I
    //   49: invokestatic setTextAppearance : (Landroid/widget/TextView;I)V
    //   52: aload #4
    //   54: aload_1
    //   55: invokestatic n : (Labk;)Ljava/lang/CharSequence;
    //   58: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   61: aload #4
    //   63: ldc 250.0
    //   65: invokestatic b : (F)F
    //   68: f2i
    //   69: invokevirtual setMaxWidth : (I)V
    //   72: aload #4
    //   74: iload_2
    //   75: iload_2
    //   76: iload_2
    //   77: iload_2
    //   78: invokevirtual setPadding : (IIII)V
    //   81: aload #4
    //   83: aload_1
    //   84: invokestatic o : (Labk;)F
    //   87: aload_1
    //   88: invokestatic p : (Labk;)F
    //   91: invokevirtual setLineSpacing : (FF)V
    //   94: aload #4
    //   96: aload_1
    //   97: invokestatic q : (Labk;)Landroid/graphics/Typeface;
    //   100: aload_1
    //   101: invokestatic r : (Labk;)I
    //   104: invokevirtual setTypeface : (Landroid/graphics/Typeface;I)V
    //   107: aload_1
    //   108: invokestatic s : (Labk;)F
    //   111: fconst_0
    //   112: fcmpl
    //   113: iflt -> 126
    //   116: aload #4
    //   118: iconst_0
    //   119: aload_1
    //   120: invokestatic s : (Labk;)F
    //   123: invokevirtual setTextSize : (IF)V
    //   126: aload_1
    //   127: invokestatic t : (Labk;)Landroid/content/res/ColorStateList;
    //   130: ifnull -> 142
    //   133: aload #4
    //   135: aload_1
    //   136: invokestatic t : (Labk;)Landroid/content/res/ColorStateList;
    //   139: invokevirtual setTextColor : (Landroid/content/res/ColorStateList;)V
    //   142: new android/widget/LinearLayout
    //   145: dup
    //   146: aload_1
    //   147: invokestatic i : (Labk;)Landroid/content/Context;
    //   150: invokespecial <init> : (Landroid/content/Context;)V
    //   153: astore #5
    //   155: aload #5
    //   157: new android/view/ViewGroup$LayoutParams
    //   160: dup
    //   161: bipush #-2
    //   163: bipush #-2
    //   165: invokespecial <init> : (II)V
    //   168: invokevirtual setLayoutParams : (Landroid/view/ViewGroup$LayoutParams;)V
    //   171: aload #5
    //   173: iconst_0
    //   174: invokevirtual setOrientation : (I)V
    //   177: aload #5
    //   179: bipush #16
    //   181: invokevirtual setGravity : (I)V
    //   184: aload #5
    //   186: aload_3
    //   187: invokevirtual setBackground : (Landroid/graphics/drawable/Drawable;)V
    //   190: new android/widget/LinearLayout$LayoutParams
    //   193: dup
    //   194: bipush #-2
    //   196: bipush #-2
    //   198: fconst_0
    //   199: invokespecial <init> : (IIF)V
    //   202: astore_3
    //   203: aload_3
    //   204: bipush #17
    //   206: putfield gravity : I
    //   209: aload #4
    //   211: aload_3
    //   212: invokevirtual setLayoutParams : (Landroid/view/ViewGroup$LayoutParams;)V
    //   215: aload_0
    //   216: new android/widget/ImageView
    //   219: dup
    //   220: aload_1
    //   221: invokestatic i : (Labk;)Landroid/content/Context;
    //   224: invokespecial <init> : (Landroid/content/Context;)V
    //   227: putfield k : Landroid/widget/ImageView;
    //   230: aload_0
    //   231: getfield k : Landroid/widget/ImageView;
    //   234: aload_1
    //   235: invokestatic u : (Labk;)Landroid/graphics/drawable/Drawable;
    //   238: invokevirtual setImageDrawable : (Landroid/graphics/drawable/Drawable;)V
    //   241: aload_0
    //   242: getfield c : I
    //   245: bipush #48
    //   247: if_icmpeq -> 259
    //   250: aload_0
    //   251: getfield c : I
    //   254: bipush #80
    //   256: if_icmpne -> 561
    //   259: new android/widget/LinearLayout$LayoutParams
    //   262: dup
    //   263: aload_1
    //   264: invokestatic v : (Labk;)F
    //   267: f2i
    //   268: aload_1
    //   269: invokestatic w : (Labk;)F
    //   272: f2i
    //   273: fconst_0
    //   274: invokespecial <init> : (IIF)V
    //   277: astore_3
    //   278: aload_3
    //   279: bipush #17
    //   281: putfield gravity : I
    //   284: aload_0
    //   285: getfield k : Landroid/widget/ImageView;
    //   288: aload_3
    //   289: invokevirtual setLayoutParams : (Landroid/view/ViewGroup$LayoutParams;)V
    //   292: aload_0
    //   293: new android/widget/LinearLayout
    //   296: dup
    //   297: aload_1
    //   298: invokestatic i : (Labk;)Landroid/content/Context;
    //   301: invokespecial <init> : (Landroid/content/Context;)V
    //   304: putfield j : Landroid/widget/LinearLayout;
    //   307: aload_0
    //   308: getfield j : Landroid/widget/LinearLayout;
    //   311: new android/view/ViewGroup$LayoutParams
    //   314: dup
    //   315: bipush #-2
    //   317: bipush #-2
    //   319: invokespecial <init> : (II)V
    //   322: invokevirtual setLayoutParams : (Landroid/view/ViewGroup$LayoutParams;)V
    //   325: aload_0
    //   326: getfield j : Landroid/widget/LinearLayout;
    //   329: astore_3
    //   330: aload_0
    //   331: getfield c : I
    //   334: ldc_w 8388611
    //   337: if_icmpeq -> 350
    //   340: aload_0
    //   341: getfield c : I
    //   344: ldc_w 8388613
    //   347: if_icmpne -> 583
    //   350: iconst_0
    //   351: istore_2
    //   352: aload_3
    //   353: iload_2
    //   354: invokevirtual setOrientation : (I)V
    //   357: ldc_w 5.0
    //   360: invokestatic b : (F)F
    //   363: f2i
    //   364: istore_2
    //   365: aload_0
    //   366: getfield c : I
    //   369: lookupswitch default -> 412, 48 -> 602, 80 -> 602, 8388611 -> 588, 8388613 -> 616
    //   412: new android/widget/ImageView
    //   415: dup
    //   416: aload_1
    //   417: invokestatic i : (Labk;)Landroid/content/Context;
    //   420: invokespecial <init> : (Landroid/content/Context;)V
    //   423: astore_3
    //   424: ldc_w 17.0
    //   427: invokestatic b : (F)F
    //   430: f2i
    //   431: istore_2
    //   432: aload_3
    //   433: aload_1
    //   434: invokestatic i : (Labk;)Landroid/content/Context;
    //   437: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   440: getstatic kz.ic_clear : I
    //   443: invokevirtual getDrawable : (I)Landroid/graphics/drawable/Drawable;
    //   446: invokevirtual setImageDrawable : (Landroid/graphics/drawable/Drawable;)V
    //   449: aload_3
    //   450: iload_2
    //   451: iload_2
    //   452: iload_2
    //   453: iload_2
    //   454: invokevirtual setPadding : (IIII)V
    //   457: aload #5
    //   459: aload #4
    //   461: invokevirtual addView : (Landroid/view/View;)V
    //   464: aload #5
    //   466: aload_3
    //   467: invokevirtual addView : (Landroid/view/View;)V
    //   470: aload_0
    //   471: getfield c : I
    //   474: bipush #48
    //   476: if_icmpeq -> 489
    //   479: aload_0
    //   480: getfield c : I
    //   483: ldc_w 8388611
    //   486: if_icmpne -> 630
    //   489: aload_0
    //   490: getfield j : Landroid/widget/LinearLayout;
    //   493: aload #5
    //   495: invokevirtual addView : (Landroid/view/View;)V
    //   498: aload_0
    //   499: getfield j : Landroid/widget/LinearLayout;
    //   502: aload_0
    //   503: getfield k : Landroid/widget/ImageView;
    //   506: invokevirtual addView : (Landroid/view/View;)V
    //   509: aload_0
    //   510: getfield j : Landroid/widget/LinearLayout;
    //   513: aload_0
    //   514: getfield l : Landroid/view/View$OnClickListener;
    //   517: invokevirtual setOnClickListener : (Landroid/view/View$OnClickListener;)V
    //   520: aload_0
    //   521: getfield j : Landroid/widget/LinearLayout;
    //   524: aload_0
    //   525: getfield m : Landroid/view/View$OnLongClickListener;
    //   528: invokevirtual setOnLongClickListener : (Landroid/view/View$OnLongClickListener;)V
    //   531: aload_1
    //   532: invokestatic a : (Labk;)Z
    //   535: ifne -> 545
    //   538: aload_1
    //   539: invokestatic b : (Labk;)Z
    //   542: ifeq -> 556
    //   545: aload_0
    //   546: getfield j : Landroid/widget/LinearLayout;
    //   549: aload_0
    //   550: getfield n : Landroid/view/View$OnTouchListener;
    //   553: invokevirtual setOnTouchListener : (Landroid/view/View$OnTouchListener;)V
    //   556: aload_0
    //   557: getfield j : Landroid/widget/LinearLayout;
    //   560: areturn
    //   561: new android/widget/LinearLayout$LayoutParams
    //   564: dup
    //   565: aload_1
    //   566: invokestatic w : (Labk;)F
    //   569: f2i
    //   570: aload_1
    //   571: invokestatic v : (Labk;)F
    //   574: f2i
    //   575: fconst_0
    //   576: invokespecial <init> : (IIF)V
    //   579: astore_3
    //   580: goto -> 278
    //   583: iconst_1
    //   584: istore_2
    //   585: goto -> 352
    //   588: aload_0
    //   589: getfield j : Landroid/widget/LinearLayout;
    //   592: iconst_0
    //   593: iconst_0
    //   594: iload_2
    //   595: iconst_0
    //   596: invokevirtual setPadding : (IIII)V
    //   599: goto -> 412
    //   602: aload_0
    //   603: getfield j : Landroid/widget/LinearLayout;
    //   606: iload_2
    //   607: iconst_0
    //   608: iload_2
    //   609: iconst_0
    //   610: invokevirtual setPadding : (IIII)V
    //   613: goto -> 412
    //   616: aload_0
    //   617: getfield j : Landroid/widget/LinearLayout;
    //   620: iload_2
    //   621: iconst_0
    //   622: iconst_0
    //   623: iconst_0
    //   624: invokevirtual setPadding : (IIII)V
    //   627: goto -> 412
    //   630: aload_0
    //   631: getfield j : Landroid/widget/LinearLayout;
    //   634: aload_0
    //   635: getfield k : Landroid/widget/ImageView;
    //   638: invokevirtual addView : (Landroid/view/View;)V
    //   641: aload_0
    //   642: getfield j : Landroid/widget/LinearLayout;
    //   645: aload #5
    //   647: invokevirtual addView : (Landroid/view/View;)V
    //   650: goto -> 509
  }
  
  private PointF d() {
    PointF pointF1 = new PointF();
    RectF rectF = abl.b(this.e);
    PointF pointF2 = new PointF(rectF.centerX(), rectF.centerY());
    switch (this.c) {
      default:
        return pointF1;
      case 8388611:
        pointF1.x = rectF.left - this.j.getWidth() - this.d;
        pointF2.y -= this.j.getHeight() / 2.0F;
        return pointF1;
      case 8388613:
        pointF1.x = rectF.right + this.d;
        pointF2.y -= this.j.getHeight() / 2.0F;
        return pointF1;
      case 48:
        pointF2.x -= this.j.getWidth() / 2.0F;
        pointF1.y = rectF.top - this.j.getHeight() - this.d;
        return pointF1;
      case 80:
        break;
    } 
    pointF2.x -= this.j.getWidth() / 2.0F;
    pointF1.y = rectF.bottom + this.d;
    return pointF1;
  }
  
  public void a(abm paramabm) {
    this.g = paramabm;
  }
  
  public void a(abn paramabn) {
    this.i = paramabn;
  }
  
  public void a(abo paramabo) {
    this.h = paramabo;
  }
  
  public boolean a() {
    return this.f.isShowing();
  }
  
  public void b() {
    if (!a()) {
      this.j.getViewTreeObserver().addOnGlobalLayoutListener(this.o);
      this.e.addOnAttachStateChangeListener(this.q);
      this.e.post(new abd(this));
    } 
  }
  
  public void c() {
    this.f.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\abb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */