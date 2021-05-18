package android.support.design.widget;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.v4.text.TextDirectionHeuristicCompat;
import android.support.v4.text.TextDirectionHeuristicsCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.widget.TintTypedArray;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Interpolator;

final class CollapsingTextHelper {
  private static final boolean DEBUG_DRAW = false;
  
  private static final Paint DEBUG_DRAW_PAINT;
  
  private static final boolean USE_SCALING_TEXTURE;
  
  private boolean mBoundsChanged;
  
  private final Rect mCollapsedBounds;
  
  private float mCollapsedDrawX;
  
  private float mCollapsedDrawY;
  
  private int mCollapsedShadowColor;
  
  private float mCollapsedShadowDx;
  
  private float mCollapsedShadowDy;
  
  private float mCollapsedShadowRadius;
  
  private ColorStateList mCollapsedTextColor;
  
  private int mCollapsedTextGravity = 16;
  
  private float mCollapsedTextSize = 15.0F;
  
  private Typeface mCollapsedTypeface;
  
  private final RectF mCurrentBounds;
  
  private float mCurrentDrawX;
  
  private float mCurrentDrawY;
  
  private float mCurrentTextSize;
  
  private Typeface mCurrentTypeface;
  
  private boolean mDrawTitle;
  
  private final Rect mExpandedBounds;
  
  private float mExpandedDrawX;
  
  private float mExpandedDrawY;
  
  private float mExpandedFraction;
  
  private int mExpandedShadowColor;
  
  private float mExpandedShadowDx;
  
  private float mExpandedShadowDy;
  
  private float mExpandedShadowRadius;
  
  private ColorStateList mExpandedTextColor;
  
  private int mExpandedTextGravity = 16;
  
  private float mExpandedTextSize = 15.0F;
  
  private Bitmap mExpandedTitleTexture;
  
  private Typeface mExpandedTypeface;
  
  private boolean mIsRtl;
  
  private Interpolator mPositionInterpolator;
  
  private float mScale;
  
  private int[] mState;
  
  private CharSequence mText;
  
  private final TextPaint mTextPaint;
  
  private Interpolator mTextSizeInterpolator;
  
  private CharSequence mTextToDraw;
  
  private float mTextureAscent;
  
  private float mTextureDescent;
  
  private Paint mTexturePaint;
  
  private boolean mUseTexture;
  
  private final View mView;
  
  static {
    boolean bool;
    if (Build.VERSION.SDK_INT < 18) {
      bool = true;
    } else {
      bool = false;
    } 
    USE_SCALING_TEXTURE = bool;
    DEBUG_DRAW_PAINT = null;
    if (DEBUG_DRAW_PAINT != null) {
      DEBUG_DRAW_PAINT.setAntiAlias(true);
      DEBUG_DRAW_PAINT.setColor(-65281);
    } 
  }
  
  public CollapsingTextHelper(View paramView) {
    this.mView = paramView;
    this.mTextPaint = new TextPaint(129);
    this.mCollapsedBounds = new Rect();
    this.mExpandedBounds = new Rect();
    this.mCurrentBounds = new RectF();
  }
  
  private static int blendColors(int paramInt1, int paramInt2, float paramFloat) {
    float f1 = 1.0F - paramFloat;
    float f2 = Color.alpha(paramInt1);
    float f3 = Color.alpha(paramInt2);
    float f4 = Color.red(paramInt1);
    float f5 = Color.red(paramInt2);
    float f6 = Color.green(paramInt1);
    float f7 = Color.green(paramInt2);
    float f8 = Color.blue(paramInt1);
    float f9 = Color.blue(paramInt2);
    return Color.argb((int)(f2 * f1 + f3 * paramFloat), (int)(f4 * f1 + f5 * paramFloat), (int)(f6 * f1 + f7 * paramFloat), (int)(f1 * f8 + f9 * paramFloat));
  }
  
  private void calculateBaseOffsets() {
    // Byte code:
    //   0: iconst_1
    //   1: istore #5
    //   3: fconst_0
    //   4: fstore_2
    //   5: aload_0
    //   6: getfield mCurrentTextSize : F
    //   9: fstore_3
    //   10: aload_0
    //   11: aload_0
    //   12: getfield mCollapsedTextSize : F
    //   15: invokespecial calculateUsingTextSize : (F)V
    //   18: aload_0
    //   19: getfield mTextToDraw : Ljava/lang/CharSequence;
    //   22: ifnull -> 370
    //   25: aload_0
    //   26: getfield mTextPaint : Landroid/text/TextPaint;
    //   29: aload_0
    //   30: getfield mTextToDraw : Ljava/lang/CharSequence;
    //   33: iconst_0
    //   34: aload_0
    //   35: getfield mTextToDraw : Ljava/lang/CharSequence;
    //   38: invokeinterface length : ()I
    //   43: invokevirtual measureText : (Ljava/lang/CharSequence;II)F
    //   46: fstore_1
    //   47: aload_0
    //   48: getfield mCollapsedTextGravity : I
    //   51: istore #6
    //   53: aload_0
    //   54: getfield mIsRtl : Z
    //   57: ifeq -> 375
    //   60: iconst_1
    //   61: istore #4
    //   63: iload #6
    //   65: iload #4
    //   67: invokestatic getAbsoluteGravity : (II)I
    //   70: istore #4
    //   72: iload #4
    //   74: bipush #112
    //   76: iand
    //   77: lookupswitch default -> 104, 48 -> 396, 80 -> 381
    //   104: aload_0
    //   105: aload_0
    //   106: getfield mTextPaint : Landroid/text/TextPaint;
    //   109: invokevirtual descent : ()F
    //   112: aload_0
    //   113: getfield mTextPaint : Landroid/text/TextPaint;
    //   116: invokevirtual ascent : ()F
    //   119: fsub
    //   120: fconst_2
    //   121: fdiv
    //   122: aload_0
    //   123: getfield mTextPaint : Landroid/text/TextPaint;
    //   126: invokevirtual descent : ()F
    //   129: fsub
    //   130: aload_0
    //   131: getfield mCollapsedBounds : Landroid/graphics/Rect;
    //   134: invokevirtual centerY : ()I
    //   137: i2f
    //   138: fadd
    //   139: putfield mCollapsedDrawY : F
    //   142: iload #4
    //   144: ldc 8388615
    //   146: iand
    //   147: lookupswitch default -> 172, 1 -> 419, 5 -> 438
    //   172: aload_0
    //   173: aload_0
    //   174: getfield mCollapsedBounds : Landroid/graphics/Rect;
    //   177: getfield left : I
    //   180: i2f
    //   181: putfield mCollapsedDrawX : F
    //   184: aload_0
    //   185: aload_0
    //   186: getfield mExpandedTextSize : F
    //   189: invokespecial calculateUsingTextSize : (F)V
    //   192: fload_2
    //   193: fstore_1
    //   194: aload_0
    //   195: getfield mTextToDraw : Ljava/lang/CharSequence;
    //   198: ifnull -> 223
    //   201: aload_0
    //   202: getfield mTextPaint : Landroid/text/TextPaint;
    //   205: aload_0
    //   206: getfield mTextToDraw : Ljava/lang/CharSequence;
    //   209: iconst_0
    //   210: aload_0
    //   211: getfield mTextToDraw : Ljava/lang/CharSequence;
    //   214: invokeinterface length : ()I
    //   219: invokevirtual measureText : (Ljava/lang/CharSequence;II)F
    //   222: fstore_1
    //   223: aload_0
    //   224: getfield mExpandedTextGravity : I
    //   227: istore #6
    //   229: aload_0
    //   230: getfield mIsRtl : Z
    //   233: ifeq -> 455
    //   236: iload #5
    //   238: istore #4
    //   240: iload #6
    //   242: iload #4
    //   244: invokestatic getAbsoluteGravity : (II)I
    //   247: istore #4
    //   249: iload #4
    //   251: bipush #112
    //   253: iand
    //   254: lookupswitch default -> 280, 48 -> 476, 80 -> 461
    //   280: aload_0
    //   281: aload_0
    //   282: getfield mTextPaint : Landroid/text/TextPaint;
    //   285: invokevirtual descent : ()F
    //   288: aload_0
    //   289: getfield mTextPaint : Landroid/text/TextPaint;
    //   292: invokevirtual ascent : ()F
    //   295: fsub
    //   296: fconst_2
    //   297: fdiv
    //   298: aload_0
    //   299: getfield mTextPaint : Landroid/text/TextPaint;
    //   302: invokevirtual descent : ()F
    //   305: fsub
    //   306: aload_0
    //   307: getfield mExpandedBounds : Landroid/graphics/Rect;
    //   310: invokevirtual centerY : ()I
    //   313: i2f
    //   314: fadd
    //   315: putfield mExpandedDrawY : F
    //   318: iload #4
    //   320: ldc 8388615
    //   322: iand
    //   323: lookupswitch default -> 348, 1 -> 499, 5 -> 518
    //   348: aload_0
    //   349: aload_0
    //   350: getfield mExpandedBounds : Landroid/graphics/Rect;
    //   353: getfield left : I
    //   356: i2f
    //   357: putfield mExpandedDrawX : F
    //   360: aload_0
    //   361: invokespecial clearTexture : ()V
    //   364: aload_0
    //   365: fload_3
    //   366: invokespecial setInterpolatedTextSize : (F)V
    //   369: return
    //   370: fconst_0
    //   371: fstore_1
    //   372: goto -> 47
    //   375: iconst_0
    //   376: istore #4
    //   378: goto -> 63
    //   381: aload_0
    //   382: aload_0
    //   383: getfield mCollapsedBounds : Landroid/graphics/Rect;
    //   386: getfield bottom : I
    //   389: i2f
    //   390: putfield mCollapsedDrawY : F
    //   393: goto -> 142
    //   396: aload_0
    //   397: aload_0
    //   398: getfield mCollapsedBounds : Landroid/graphics/Rect;
    //   401: getfield top : I
    //   404: i2f
    //   405: aload_0
    //   406: getfield mTextPaint : Landroid/text/TextPaint;
    //   409: invokevirtual ascent : ()F
    //   412: fsub
    //   413: putfield mCollapsedDrawY : F
    //   416: goto -> 142
    //   419: aload_0
    //   420: aload_0
    //   421: getfield mCollapsedBounds : Landroid/graphics/Rect;
    //   424: invokevirtual centerX : ()I
    //   427: i2f
    //   428: fload_1
    //   429: fconst_2
    //   430: fdiv
    //   431: fsub
    //   432: putfield mCollapsedDrawX : F
    //   435: goto -> 184
    //   438: aload_0
    //   439: aload_0
    //   440: getfield mCollapsedBounds : Landroid/graphics/Rect;
    //   443: getfield right : I
    //   446: i2f
    //   447: fload_1
    //   448: fsub
    //   449: putfield mCollapsedDrawX : F
    //   452: goto -> 184
    //   455: iconst_0
    //   456: istore #4
    //   458: goto -> 240
    //   461: aload_0
    //   462: aload_0
    //   463: getfield mExpandedBounds : Landroid/graphics/Rect;
    //   466: getfield bottom : I
    //   469: i2f
    //   470: putfield mExpandedDrawY : F
    //   473: goto -> 318
    //   476: aload_0
    //   477: aload_0
    //   478: getfield mExpandedBounds : Landroid/graphics/Rect;
    //   481: getfield top : I
    //   484: i2f
    //   485: aload_0
    //   486: getfield mTextPaint : Landroid/text/TextPaint;
    //   489: invokevirtual ascent : ()F
    //   492: fsub
    //   493: putfield mExpandedDrawY : F
    //   496: goto -> 318
    //   499: aload_0
    //   500: aload_0
    //   501: getfield mExpandedBounds : Landroid/graphics/Rect;
    //   504: invokevirtual centerX : ()I
    //   507: i2f
    //   508: fload_1
    //   509: fconst_2
    //   510: fdiv
    //   511: fsub
    //   512: putfield mExpandedDrawX : F
    //   515: goto -> 360
    //   518: aload_0
    //   519: aload_0
    //   520: getfield mExpandedBounds : Landroid/graphics/Rect;
    //   523: getfield right : I
    //   526: i2f
    //   527: fload_1
    //   528: fsub
    //   529: putfield mExpandedDrawX : F
    //   532: goto -> 360
  }
  
  private void calculateCurrentOffsets() {
    calculateOffsets(this.mExpandedFraction);
  }
  
  private boolean calculateIsRtl(CharSequence paramCharSequence) {
    boolean bool = true;
    if (ViewCompat.getLayoutDirection(this.mView) != 1)
      bool = false; 
    if (bool) {
      TextDirectionHeuristicCompat textDirectionHeuristicCompat1 = TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL;
      return textDirectionHeuristicCompat1.isRtl(paramCharSequence, 0, paramCharSequence.length());
    } 
    TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
    return textDirectionHeuristicCompat.isRtl(paramCharSequence, 0, paramCharSequence.length());
  }
  
  private void calculateOffsets(float paramFloat) {
    interpolateBounds(paramFloat);
    this.mCurrentDrawX = lerp(this.mExpandedDrawX, this.mCollapsedDrawX, paramFloat, this.mPositionInterpolator);
    this.mCurrentDrawY = lerp(this.mExpandedDrawY, this.mCollapsedDrawY, paramFloat, this.mPositionInterpolator);
    setInterpolatedTextSize(lerp(this.mExpandedTextSize, this.mCollapsedTextSize, paramFloat, this.mTextSizeInterpolator));
    if (this.mCollapsedTextColor != this.mExpandedTextColor) {
      this.mTextPaint.setColor(blendColors(getCurrentExpandedTextColor(), getCurrentCollapsedTextColor(), paramFloat));
    } else {
      this.mTextPaint.setColor(getCurrentCollapsedTextColor());
    } 
    this.mTextPaint.setShadowLayer(lerp(this.mExpandedShadowRadius, this.mCollapsedShadowRadius, paramFloat, null), lerp(this.mExpandedShadowDx, this.mCollapsedShadowDx, paramFloat, null), lerp(this.mExpandedShadowDy, this.mCollapsedShadowDy, paramFloat, null), blendColors(this.mExpandedShadowColor, this.mCollapsedShadowColor, paramFloat));
    ViewCompat.postInvalidateOnAnimation(this.mView);
  }
  
  private void calculateUsingTextSize(float paramFloat) {
    boolean bool = true;
    if (this.mText != null) {
      float f1;
      boolean bool1;
      float f2 = this.mCollapsedBounds.width();
      float f3 = this.mExpandedBounds.width();
      if (isClose(paramFloat, this.mCollapsedTextSize)) {
        f1 = this.mCollapsedTextSize;
        this.mScale = 1.0F;
        if (this.mCurrentTypeface != this.mCollapsedTypeface) {
          this.mCurrentTypeface = this.mCollapsedTypeface;
          bool1 = true;
          paramFloat = f2;
        } else {
          bool1 = false;
          paramFloat = f2;
        } 
      } else {
        f1 = this.mExpandedTextSize;
        if (this.mCurrentTypeface != this.mExpandedTypeface) {
          this.mCurrentTypeface = this.mExpandedTypeface;
          bool1 = true;
        } else {
          bool1 = false;
        } 
        if (isClose(paramFloat, this.mExpandedTextSize)) {
          this.mScale = 1.0F;
        } else {
          this.mScale = paramFloat / this.mExpandedTextSize;
        } 
        paramFloat = this.mCollapsedTextSize / this.mExpandedTextSize;
        if (f3 * paramFloat > f2) {
          paramFloat = Math.min(f2 / paramFloat, f3);
        } else {
          paramFloat = f3;
        } 
      } 
      boolean bool2 = bool1;
      if (paramFloat > 0.0F) {
        if (this.mCurrentTextSize != f1 || this.mBoundsChanged || bool1) {
          bool1 = true;
        } else {
          bool1 = false;
        } 
        this.mCurrentTextSize = f1;
        this.mBoundsChanged = false;
        bool2 = bool1;
      } 
      if (this.mTextToDraw == null || bool2) {
        this.mTextPaint.setTextSize(this.mCurrentTextSize);
        this.mTextPaint.setTypeface(this.mCurrentTypeface);
        TextPaint textPaint = this.mTextPaint;
        if (this.mScale == 1.0F)
          bool = false; 
        textPaint.setLinearText(bool);
        CharSequence charSequence = TextUtils.ellipsize(this.mText, this.mTextPaint, paramFloat, TextUtils.TruncateAt.END);
        if (!TextUtils.equals(charSequence, this.mTextToDraw)) {
          this.mTextToDraw = charSequence;
          this.mIsRtl = calculateIsRtl(this.mTextToDraw);
          return;
        } 
      } 
    } 
  }
  
  private void clearTexture() {
    if (this.mExpandedTitleTexture != null) {
      this.mExpandedTitleTexture.recycle();
      this.mExpandedTitleTexture = null;
    } 
  }
  
  private void ensureExpandedTexture() {
    if (this.mExpandedTitleTexture == null && !this.mExpandedBounds.isEmpty() && !TextUtils.isEmpty(this.mTextToDraw)) {
      calculateOffsets(0.0F);
      this.mTextureAscent = this.mTextPaint.ascent();
      this.mTextureDescent = this.mTextPaint.descent();
      int i = Math.round(this.mTextPaint.measureText(this.mTextToDraw, 0, this.mTextToDraw.length()));
      int j = Math.round(this.mTextureDescent - this.mTextureAscent);
      if (i > 0 && j > 0) {
        this.mExpandedTitleTexture = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
        (new Canvas(this.mExpandedTitleTexture)).drawText(this.mTextToDraw, 0, this.mTextToDraw.length(), 0.0F, j - this.mTextPaint.descent(), (Paint)this.mTextPaint);
        if (this.mTexturePaint == null) {
          this.mTexturePaint = new Paint(3);
          return;
        } 
      } 
    } 
  }
  
  @ColorInt
  private int getCurrentCollapsedTextColor() {
    return (this.mState != null) ? this.mCollapsedTextColor.getColorForState(this.mState, 0) : this.mCollapsedTextColor.getDefaultColor();
  }
  
  @ColorInt
  private int getCurrentExpandedTextColor() {
    return (this.mState != null) ? this.mExpandedTextColor.getColorForState(this.mState, 0) : this.mExpandedTextColor.getDefaultColor();
  }
  
  private void interpolateBounds(float paramFloat) {
    this.mCurrentBounds.left = lerp(this.mExpandedBounds.left, this.mCollapsedBounds.left, paramFloat, this.mPositionInterpolator);
    this.mCurrentBounds.top = lerp(this.mExpandedDrawY, this.mCollapsedDrawY, paramFloat, this.mPositionInterpolator);
    this.mCurrentBounds.right = lerp(this.mExpandedBounds.right, this.mCollapsedBounds.right, paramFloat, this.mPositionInterpolator);
    this.mCurrentBounds.bottom = lerp(this.mExpandedBounds.bottom, this.mCollapsedBounds.bottom, paramFloat, this.mPositionInterpolator);
  }
  
  private static boolean isClose(float paramFloat1, float paramFloat2) {
    return (Math.abs(paramFloat1 - paramFloat2) < 0.001F);
  }
  
  private static float lerp(float paramFloat1, float paramFloat2, float paramFloat3, Interpolator paramInterpolator) {
    float f = paramFloat3;
    if (paramInterpolator != null)
      f = paramInterpolator.getInterpolation(paramFloat3); 
    return AnimationUtils.lerp(paramFloat1, paramFloat2, f);
  }
  
  private Typeface readFontFamilyTypeface(int paramInt) {
    TypedArray typedArray = this.mView.getContext().obtainStyledAttributes(paramInt, new int[] { 16843692 });
    try {
      String str = typedArray.getString(0);
      if (str != null)
        return Typeface.create(str, 0); 
      return null;
    } finally {
      typedArray.recycle();
    } 
  }
  
  private static boolean rectEquals(Rect paramRect, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    return (paramRect.left == paramInt1 && paramRect.top == paramInt2 && paramRect.right == paramInt3 && paramRect.bottom == paramInt4);
  }
  
  private void setInterpolatedTextSize(float paramFloat) {
    boolean bool;
    calculateUsingTextSize(paramFloat);
    if (USE_SCALING_TEXTURE && this.mScale != 1.0F) {
      bool = true;
    } else {
      bool = false;
    } 
    this.mUseTexture = bool;
    if (this.mUseTexture)
      ensureExpandedTexture(); 
    ViewCompat.postInvalidateOnAnimation(this.mView);
  }
  
  public void draw(Canvas paramCanvas) {
    int i = paramCanvas.save();
    if (this.mTextToDraw != null && this.mDrawTitle) {
      float f1;
      boolean bool;
      float f4 = this.mCurrentDrawX;
      float f3 = this.mCurrentDrawY;
      if (this.mUseTexture && this.mExpandedTitleTexture != null) {
        bool = true;
      } else {
        bool = false;
      } 
      if (bool) {
        f1 = this.mTextureAscent * this.mScale;
        float f = this.mTextureDescent;
        f = this.mScale;
      } else {
        f1 = this.mTextPaint.ascent() * this.mScale;
        this.mTextPaint.descent();
        float f = this.mScale;
      } 
      float f2 = f3;
      if (bool)
        f2 = f3 + f1; 
      if (this.mScale != 1.0F)
        paramCanvas.scale(this.mScale, this.mScale, f4, f2); 
      if (bool) {
        paramCanvas.drawBitmap(this.mExpandedTitleTexture, f4, f2, this.mTexturePaint);
      } else {
        paramCanvas.drawText(this.mTextToDraw, 0, this.mTextToDraw.length(), f4, f2, (Paint)this.mTextPaint);
      } 
    } 
    paramCanvas.restoreToCount(i);
  }
  
  ColorStateList getCollapsedTextColor() {
    return this.mCollapsedTextColor;
  }
  
  int getCollapsedTextGravity() {
    return this.mCollapsedTextGravity;
  }
  
  float getCollapsedTextSize() {
    return this.mCollapsedTextSize;
  }
  
  Typeface getCollapsedTypeface() {
    return (this.mCollapsedTypeface != null) ? this.mCollapsedTypeface : Typeface.DEFAULT;
  }
  
  ColorStateList getExpandedTextColor() {
    return this.mExpandedTextColor;
  }
  
  int getExpandedTextGravity() {
    return this.mExpandedTextGravity;
  }
  
  float getExpandedTextSize() {
    return this.mExpandedTextSize;
  }
  
  Typeface getExpandedTypeface() {
    return (this.mExpandedTypeface != null) ? this.mExpandedTypeface : Typeface.DEFAULT;
  }
  
  float getExpansionFraction() {
    return this.mExpandedFraction;
  }
  
  CharSequence getText() {
    return this.mText;
  }
  
  final boolean isStateful() {
    return ((this.mCollapsedTextColor != null && this.mCollapsedTextColor.isStateful()) || (this.mExpandedTextColor != null && this.mExpandedTextColor.isStateful()));
  }
  
  void onBoundsChanged() {
    boolean bool;
    if (this.mCollapsedBounds.width() > 0 && this.mCollapsedBounds.height() > 0 && this.mExpandedBounds.width() > 0 && this.mExpandedBounds.height() > 0) {
      bool = true;
    } else {
      bool = false;
    } 
    this.mDrawTitle = bool;
  }
  
  public void recalculate() {
    if (this.mView.getHeight() > 0 && this.mView.getWidth() > 0) {
      calculateBaseOffsets();
      calculateCurrentOffsets();
    } 
  }
  
  void setCollapsedBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (!rectEquals(this.mCollapsedBounds, paramInt1, paramInt2, paramInt3, paramInt4)) {
      this.mCollapsedBounds.set(paramInt1, paramInt2, paramInt3, paramInt4);
      this.mBoundsChanged = true;
      onBoundsChanged();
    } 
  }
  
  void setCollapsedTextAppearance(int paramInt) {
    TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), paramInt, R.styleable.TextAppearance);
    if (tintTypedArray.hasValue(R.styleable.TextAppearance_android_textColor))
      this.mCollapsedTextColor = tintTypedArray.getColorStateList(R.styleable.TextAppearance_android_textColor); 
    if (tintTypedArray.hasValue(R.styleable.TextAppearance_android_textSize))
      this.mCollapsedTextSize = tintTypedArray.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, (int)this.mCollapsedTextSize); 
    this.mCollapsedShadowColor = tintTypedArray.getInt(R.styleable.TextAppearance_android_shadowColor, 0);
    this.mCollapsedShadowDx = tintTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0F);
    this.mCollapsedShadowDy = tintTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0F);
    this.mCollapsedShadowRadius = tintTypedArray.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0F);
    tintTypedArray.recycle();
    if (Build.VERSION.SDK_INT >= 16)
      this.mCollapsedTypeface = readFontFamilyTypeface(paramInt); 
    recalculate();
  }
  
  void setCollapsedTextColor(ColorStateList paramColorStateList) {
    if (this.mCollapsedTextColor != paramColorStateList) {
      this.mCollapsedTextColor = paramColorStateList;
      recalculate();
    } 
  }
  
  void setCollapsedTextGravity(int paramInt) {
    if (this.mCollapsedTextGravity != paramInt) {
      this.mCollapsedTextGravity = paramInt;
      recalculate();
    } 
  }
  
  void setCollapsedTextSize(float paramFloat) {
    if (this.mCollapsedTextSize != paramFloat) {
      this.mCollapsedTextSize = paramFloat;
      recalculate();
    } 
  }
  
  void setCollapsedTypeface(Typeface paramTypeface) {
    if (this.mCollapsedTypeface != paramTypeface) {
      this.mCollapsedTypeface = paramTypeface;
      recalculate();
    } 
  }
  
  void setExpandedBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (!rectEquals(this.mExpandedBounds, paramInt1, paramInt2, paramInt3, paramInt4)) {
      this.mExpandedBounds.set(paramInt1, paramInt2, paramInt3, paramInt4);
      this.mBoundsChanged = true;
      onBoundsChanged();
    } 
  }
  
  void setExpandedTextAppearance(int paramInt) {
    TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), paramInt, R.styleable.TextAppearance);
    if (tintTypedArray.hasValue(R.styleable.TextAppearance_android_textColor))
      this.mExpandedTextColor = tintTypedArray.getColorStateList(R.styleable.TextAppearance_android_textColor); 
    if (tintTypedArray.hasValue(R.styleable.TextAppearance_android_textSize))
      this.mExpandedTextSize = tintTypedArray.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, (int)this.mExpandedTextSize); 
    this.mExpandedShadowColor = tintTypedArray.getInt(R.styleable.TextAppearance_android_shadowColor, 0);
    this.mExpandedShadowDx = tintTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0F);
    this.mExpandedShadowDy = tintTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0F);
    this.mExpandedShadowRadius = tintTypedArray.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0F);
    tintTypedArray.recycle();
    if (Build.VERSION.SDK_INT >= 16)
      this.mExpandedTypeface = readFontFamilyTypeface(paramInt); 
    recalculate();
  }
  
  void setExpandedTextColor(ColorStateList paramColorStateList) {
    if (this.mExpandedTextColor != paramColorStateList) {
      this.mExpandedTextColor = paramColorStateList;
      recalculate();
    } 
  }
  
  void setExpandedTextGravity(int paramInt) {
    if (this.mExpandedTextGravity != paramInt) {
      this.mExpandedTextGravity = paramInt;
      recalculate();
    } 
  }
  
  void setExpandedTextSize(float paramFloat) {
    if (this.mExpandedTextSize != paramFloat) {
      this.mExpandedTextSize = paramFloat;
      recalculate();
    } 
  }
  
  void setExpandedTypeface(Typeface paramTypeface) {
    if (this.mExpandedTypeface != paramTypeface) {
      this.mExpandedTypeface = paramTypeface;
      recalculate();
    } 
  }
  
  void setExpansionFraction(float paramFloat) {
    paramFloat = MathUtils.constrain(paramFloat, 0.0F, 1.0F);
    if (paramFloat != this.mExpandedFraction) {
      this.mExpandedFraction = paramFloat;
      calculateCurrentOffsets();
    } 
  }
  
  void setPositionInterpolator(Interpolator paramInterpolator) {
    this.mPositionInterpolator = paramInterpolator;
    recalculate();
  }
  
  final boolean setState(int[] paramArrayOfint) {
    this.mState = paramArrayOfint;
    if (isStateful()) {
      recalculate();
      return true;
    } 
    return false;
  }
  
  void setText(CharSequence paramCharSequence) {
    if (paramCharSequence == null || !paramCharSequence.equals(this.mText)) {
      this.mText = paramCharSequence;
      this.mTextToDraw = null;
      clearTexture();
      recalculate();
    } 
  }
  
  void setTextSizeInterpolator(Interpolator paramInterpolator) {
    this.mTextSizeInterpolator = paramInterpolator;
    recalculate();
  }
  
  void setTypefaces(Typeface paramTypeface) {
    this.mExpandedTypeface = paramTypeface;
    this.mCollapsedTypeface = paramTypeface;
    recalculate();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\CollapsingTextHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */