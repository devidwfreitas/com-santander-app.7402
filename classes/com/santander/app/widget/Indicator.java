package com.santander.app.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import flv;
import java.util.Vector;
import mzr;

public class Indicator extends LinearLayout {
  private static final int a = 8;
  
  private Vector<ImageView> b = null;
  
  private Context c = null;
  
  private Drawable d = null;
  
  private Drawable e = null;
  
  private int f = 0;
  
  private int g = 0;
  
  private View h;
  
  private TextView i;
  
  public Indicator(Context paramContext) {
    super(paramContext);
    this.c = paramContext;
  }
  
  public Indicator(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    this.c = paramContext;
    TypedArray typedArray = this.c.obtainStyledAttributes(paramAttributeSet, flv.Indicator);
    try {
      int i = mzr.d();
      if (i == 3) {
        this.d = getResources().getDrawable(2130838057);
      } else if (i == 4 || i == 5) {
        this.d = getResources().getDrawable(2130838060);
      } else {
        this.d = typedArray.getDrawable(0);
      } 
    } catch (Exception exception) {
      this.d = typedArray.getDrawable(0);
    } 
    this.e = typedArray.getDrawable(1);
    typedArray.recycle();
  }
  
  private String a(int paramInt) {
    return (this.g == 0) ? "" : ((paramInt + 1) + " / " + this.g);
  }
  
  public int a() {
    return this.g;
  }
  
  public void b() {
    if (this.b != null)
      for (int i = 0; i < this.b.size(); i++)
        ((ImageView)this.b.elementAt(i)).setImageDrawable(this.e);  
  }
  
  public void setIndicatorLayout(View paramView) {
    this.h = paramView;
  }
  
  public void setSelected(int paramInt) {
    if (this.g < 8 && this.b.size() > 0) {
      ((ImageView)this.b.elementAt(this.f)).setImageDrawable(this.e);
      this.f = paramInt;
      ((ImageView)this.b.elementAt(this.f)).setImageDrawable(this.d);
      return;
    } 
    if (this.b != null && this.b.size() > 0) {
      this.i.setText(a(paramInt));
      return;
    } 
    if (this.i != null) {
      this.i.setText(a(paramInt));
      return;
    } 
  }
  
  public void setSize(int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: iload_1
    //   2: putfield g : I
    //   5: iload_1
    //   6: bipush #8
    //   8: if_icmpge -> 168
    //   11: aload_0
    //   12: getfield b : Ljava/util/Vector;
    //   15: ifnonnull -> 29
    //   18: aload_0
    //   19: new java/util/Vector
    //   22: dup
    //   23: invokespecial <init> : ()V
    //   26: putfield b : Ljava/util/Vector;
    //   29: aload_0
    //   30: iconst_0
    //   31: putfield f : I
    //   34: aload_0
    //   35: getfield b : Ljava/util/Vector;
    //   38: invokevirtual clear : ()V
    //   41: aload_0
    //   42: invokevirtual removeAllViews : ()V
    //   45: iconst_0
    //   46: istore_2
    //   47: iload_2
    //   48: iload_1
    //   49: if_icmpge -> 289
    //   52: new android/widget/ImageView
    //   55: dup
    //   56: aload_0
    //   57: getfield c : Landroid/content/Context;
    //   60: invokespecial <init> : (Landroid/content/Context;)V
    //   63: astore_3
    //   64: new android/widget/LinearLayout$LayoutParams
    //   67: dup
    //   68: bipush #10
    //   70: aload_0
    //   71: getfield c : Landroid/content/Context;
    //   74: invokestatic a : (ILandroid/content/Context;)I
    //   77: bipush #10
    //   79: aload_0
    //   80: getfield c : Landroid/content/Context;
    //   83: invokestatic a : (ILandroid/content/Context;)I
    //   86: invokespecial <init> : (II)V
    //   89: astore #4
    //   91: aload_3
    //   92: aload #4
    //   94: invokevirtual setLayoutParams : (Landroid/view/ViewGroup$LayoutParams;)V
    //   97: iload_2
    //   98: iload_1
    //   99: iconst_1
    //   100: isub
    //   101: if_icmpeq -> 124
    //   104: aload #4
    //   106: iconst_0
    //   107: iconst_0
    //   108: aload_0
    //   109: getfield c : Landroid/content/Context;
    //   112: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   115: ldc 2131361945
    //   117: invokevirtual getDimensionPixelOffset : (I)I
    //   120: iconst_0
    //   121: invokevirtual setMargins : (IIII)V
    //   124: iload_2
    //   125: ifne -> 157
    //   128: aload_3
    //   129: aload_0
    //   130: getfield d : Landroid/graphics/drawable/Drawable;
    //   133: invokevirtual setImageDrawable : (Landroid/graphics/drawable/Drawable;)V
    //   136: aload_0
    //   137: getfield b : Ljava/util/Vector;
    //   140: aload_3
    //   141: invokevirtual add : (Ljava/lang/Object;)Z
    //   144: pop
    //   145: aload_0
    //   146: aload_3
    //   147: invokevirtual addView : (Landroid/view/View;)V
    //   150: iload_2
    //   151: iconst_1
    //   152: iadd
    //   153: istore_2
    //   154: goto -> 47
    //   157: aload_3
    //   158: aload_0
    //   159: getfield e : Landroid/graphics/drawable/Drawable;
    //   162: invokevirtual setImageDrawable : (Landroid/graphics/drawable/Drawable;)V
    //   165: goto -> 136
    //   168: aload_0
    //   169: getfield b : Ljava/util/Vector;
    //   172: ifnull -> 191
    //   175: aload_0
    //   176: iconst_0
    //   177: putfield f : I
    //   180: aload_0
    //   181: getfield b : Ljava/util/Vector;
    //   184: invokevirtual clear : ()V
    //   187: aload_0
    //   188: invokevirtual removeAllViews : ()V
    //   191: aload_0
    //   192: getfield h : Landroid/view/View;
    //   195: ifnonnull -> 267
    //   198: aload_0
    //   199: getfield c : Landroid/content/Context;
    //   202: ldc 'layout_inflater'
    //   204: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   207: checkcast android/view/LayoutInflater
    //   210: astore_3
    //   211: invokestatic d : ()I
    //   214: tableswitch default -> 334, 3 -> 290, 4 -> 320, 5 -> 320
    //   240: aload_0
    //   241: aload_3
    //   242: ldc 2130968847
    //   244: aload_0
    //   245: invokevirtual inflate : (ILandroid/view/ViewGroup;)Landroid/view/View;
    //   248: putfield h : Landroid/view/View;
    //   251: aload_0
    //   252: aload_0
    //   253: getfield h : Landroid/view/View;
    //   256: ldc 2131756454
    //   258: invokevirtual findViewById : (I)Landroid/view/View;
    //   261: checkcast android/widget/TextView
    //   264: putfield i : Landroid/widget/TextView;
    //   267: aload_0
    //   268: getfield i : Landroid/widget/TextView;
    //   271: ifnull -> 289
    //   274: aload_0
    //   275: getfield i : Landroid/widget/TextView;
    //   278: aload_0
    //   279: aload_0
    //   280: getfield f : I
    //   283: invokespecial a : (I)Ljava/lang/String;
    //   286: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   289: return
    //   290: aload_0
    //   291: aload_3
    //   292: ldc 2130968848
    //   294: aload_0
    //   295: invokevirtual inflate : (ILandroid/view/ViewGroup;)Landroid/view/View;
    //   298: putfield h : Landroid/view/View;
    //   301: goto -> 251
    //   304: astore #4
    //   306: aload_0
    //   307: aload_3
    //   308: ldc 2130968847
    //   310: aload_0
    //   311: invokevirtual inflate : (ILandroid/view/ViewGroup;)Landroid/view/View;
    //   314: putfield h : Landroid/view/View;
    //   317: goto -> 251
    //   320: aload_0
    //   321: aload_3
    //   322: ldc 2130968849
    //   324: aload_0
    //   325: invokevirtual inflate : (ILandroid/view/ViewGroup;)Landroid/view/View;
    //   328: putfield h : Landroid/view/View;
    //   331: goto -> 251
    //   334: goto -> 240
    // Exception table:
    //   from	to	target	type
    //   211	240	304	java/lang/Exception
    //   240	251	304	java/lang/Exception
    //   290	301	304	java/lang/Exception
    //   320	331	304	java/lang/Exception
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\widget\Indicator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */