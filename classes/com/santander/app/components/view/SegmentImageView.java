package com.santander.app.components.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import mzr;

public class SegmentImageView extends ImageView {
  private static final int[] a = new int[] { 2130772551 };
  
  private boolean b = false;
  
  private AlphaAnimation c = new AlphaAnimation(0.3F, 0.3F);
  
  private AlphaAnimation d = new AlphaAnimation(1.0F, 1.0F);
  
  private AlphaAnimation e = new AlphaAnimation(0.0F, 0.0F);
  
  public SegmentImageView(Context paramContext) {
    super(paramContext);
  }
  
  public SegmentImageView(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SegmentImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: iload_3
    //   4: invokespecial <init> : (Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   7: aload_0
    //   8: iconst_0
    //   9: putfield b : Z
    //   12: aload_0
    //   13: new android/view/animation/AlphaAnimation
    //   16: dup
    //   17: ldc 0.3
    //   19: ldc 0.3
    //   21: invokespecial <init> : (FF)V
    //   24: putfield c : Landroid/view/animation/AlphaAnimation;
    //   27: aload_0
    //   28: new android/view/animation/AlphaAnimation
    //   31: dup
    //   32: fconst_1
    //   33: fconst_1
    //   34: invokespecial <init> : (FF)V
    //   37: putfield d : Landroid/view/animation/AlphaAnimation;
    //   40: aload_0
    //   41: new android/view/animation/AlphaAnimation
    //   44: dup
    //   45: fconst_0
    //   46: fconst_0
    //   47: invokespecial <init> : (FF)V
    //   50: putfield e : Landroid/view/animation/AlphaAnimation;
    //   53: aload_0
    //   54: getfield c : Landroid/view/animation/AlphaAnimation;
    //   57: lconst_0
    //   58: invokevirtual setDuration : (J)V
    //   61: aload_0
    //   62: getfield c : Landroid/view/animation/AlphaAnimation;
    //   65: iconst_1
    //   66: invokevirtual setFillAfter : (Z)V
    //   69: aload_0
    //   70: getfield d : Landroid/view/animation/AlphaAnimation;
    //   73: lconst_0
    //   74: invokevirtual setDuration : (J)V
    //   77: aload_0
    //   78: getfield d : Landroid/view/animation/AlphaAnimation;
    //   81: iconst_1
    //   82: invokevirtual setFillAfter : (Z)V
    //   85: aload_0
    //   86: getfield e : Landroid/view/animation/AlphaAnimation;
    //   89: lconst_0
    //   90: invokevirtual setDuration : (J)V
    //   93: aload_0
    //   94: getfield e : Landroid/view/animation/AlphaAnimation;
    //   97: iconst_1
    //   98: invokevirtual setFillAfter : (Z)V
    //   101: aload_1
    //   102: aload_2
    //   103: getstatic flv.segmentAttrs : [I
    //   106: iload_3
    //   107: iconst_0
    //   108: invokevirtual obtainStyledAttributes : (Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    //   111: astore_1
    //   112: invokestatic d : ()I
    //   115: tableswitch default -> 140, 3 -> 160, 4 -> 191, 5 -> 191
    //   140: aload_1
    //   141: iconst_0
    //   142: invokevirtual getDrawable : (I)Landroid/graphics/drawable/Drawable;
    //   145: astore_2
    //   146: aload_2
    //   147: ifnull -> 155
    //   150: aload_0
    //   151: aload_2
    //   152: invokevirtual setImageDrawable : (Landroid/graphics/drawable/Drawable;)V
    //   155: aload_1
    //   156: invokevirtual recycle : ()V
    //   159: return
    //   160: aload_1
    //   161: iconst_1
    //   162: invokevirtual getDrawable : (I)Landroid/graphics/drawable/Drawable;
    //   165: astore_2
    //   166: aload_2
    //   167: ifnull -> 155
    //   170: aload_0
    //   171: aload_2
    //   172: invokevirtual setImageDrawable : (Landroid/graphics/drawable/Drawable;)V
    //   175: goto -> 155
    //   178: astore_2
    //   179: ldc 'SegmentImageView'
    //   181: ldc 'Imagem Select não encontrada'
    //   183: aload_2
    //   184: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   187: pop
    //   188: goto -> 155
    //   191: aload_1
    //   192: iconst_2
    //   193: invokevirtual getDrawable : (I)Landroid/graphics/drawable/Drawable;
    //   196: astore_2
    //   197: aload_2
    //   198: ifnull -> 155
    //   201: aload_0
    //   202: aload_2
    //   203: invokevirtual setImageDrawable : (Landroid/graphics/drawable/Drawable;)V
    //   206: goto -> 155
    //   209: astore_2
    //   210: ldc 'SegmentImageView'
    //   212: ldc 'Imagem Universidades não encontrada'
    //   214: aload_2
    //   215: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   218: pop
    //   219: goto -> 155
    //   222: astore_2
    //   223: ldc 'SegmentImageView'
    //   225: ldc 'Imagem Classic não encontrada'
    //   227: aload_2
    //   228: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   231: pop
    //   232: goto -> 155
    // Exception table:
    //   from	to	target	type
    //   140	146	222	java/lang/Exception
    //   150	155	222	java/lang/Exception
    //   160	166	178	java/lang/Exception
    //   170	175	178	java/lang/Exception
    //   191	197	209	java/lang/Exception
    //   201	206	209	java/lang/Exception
  }
  
  public void a() {
    if (!this.b) {
      this.b = true;
      refreshDrawableState();
      mzr.d();
      setClickable(false);
      startAnimation((Animation)this.c);
    } 
  }
  
  public void b() {
    if (this.b) {
      this.b = false;
      refreshDrawableState();
      int i = mzr.d();
      if (i != 4 && i != 5)
        startAnimation((Animation)this.d); 
      setClickable(true);
    } 
  }
  
  public int[] onCreateDrawableState(int paramInt) {
    if (this.b) {
      int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
      mergeDrawableStates(arrayOfInt, a);
      return arrayOfInt;
    } 
    return super.onCreateDrawableState(paramInt);
  }
  
  public void setVisibility(int paramInt) {
    if (paramInt == 4) {
      startAnimation((Animation)this.e);
      return;
    } 
    if (this.b) {
      startAnimation((Animation)this.c);
    } else {
      startAnimation((Animation)this.d);
    } 
    super.setVisibility(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\SegmentImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */