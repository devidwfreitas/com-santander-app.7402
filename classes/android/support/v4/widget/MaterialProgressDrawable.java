package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;

class MaterialProgressDrawable extends Drawable implements Animatable {
  private static final int ANIMATION_DURATION = 1332;
  
  private static final int ARROW_HEIGHT = 5;
  
  private static final int ARROW_HEIGHT_LARGE = 6;
  
  private static final float ARROW_OFFSET_ANGLE = 5.0F;
  
  private static final int ARROW_WIDTH = 10;
  
  private static final int ARROW_WIDTH_LARGE = 12;
  
  private static final float CENTER_RADIUS = 8.75F;
  
  private static final float CENTER_RADIUS_LARGE = 12.5F;
  
  private static final int CIRCLE_DIAMETER = 40;
  
  private static final int CIRCLE_DIAMETER_LARGE = 56;
  
  private static final int[] COLORS;
  
  private static final float COLOR_START_DELAY_OFFSET = 0.75F;
  
  static final int DEFAULT = 1;
  
  private static final float END_TRIM_START_DELAY_OFFSET = 0.5F;
  
  private static final float FULL_ROTATION = 1080.0F;
  
  static final int LARGE = 0;
  
  private static final Interpolator LINEAR_INTERPOLATOR = (Interpolator)new LinearInterpolator();
  
  static final Interpolator MATERIAL_INTERPOLATOR = (Interpolator)new FastOutSlowInInterpolator();
  
  private static final float MAX_PROGRESS_ARC = 0.8F;
  
  private static final float NUM_POINTS = 5.0F;
  
  private static final float START_TRIM_DURATION_OFFSET = 0.5F;
  
  private static final float STROKE_WIDTH = 2.5F;
  
  private static final float STROKE_WIDTH_LARGE = 3.0F;
  
  private Animation mAnimation;
  
  private final ArrayList<Animation> mAnimators = new ArrayList<Animation>();
  
  private final Drawable.Callback mCallback = new MaterialProgressDrawable$3(this);
  
  boolean mFinishing;
  
  private double mHeight;
  
  private View mParent;
  
  private Resources mResources;
  
  private final MaterialProgressDrawable$Ring mRing;
  
  private float mRotation;
  
  float mRotationCount;
  
  private double mWidth;
  
  static {
    COLORS = new int[] { -16777216 };
  }
  
  MaterialProgressDrawable(Context paramContext, View paramView) {
    this.mParent = paramView;
    this.mResources = paramContext.getResources();
    this.mRing = new MaterialProgressDrawable$Ring(this.mCallback);
    this.mRing.setColors(COLORS);
    updateSizes(1);
    setupAnimators();
  }
  
  private int evaluateColorChange(float paramFloat, int paramInt1, int paramInt2) {
    int k = Integer.valueOf(paramInt1).intValue();
    paramInt1 = k >> 24 & 0xFF;
    int i = k >> 16 & 0xFF;
    int j = k >> 8 & 0xFF;
    k &= 0xFF;
    paramInt2 = Integer.valueOf(paramInt2).intValue();
    int m = (int)(((paramInt2 >> 24 & 0xFF) - paramInt1) * paramFloat);
    int n = (int)(((paramInt2 >> 16 & 0xFF) - i) * paramFloat);
    int i1 = (int)(((paramInt2 >> 8 & 0xFF) - j) * paramFloat);
    return k + (int)(((paramInt2 & 0xFF) - k) * paramFloat) | paramInt1 + m << 24 | i + n << 16 | i1 + j << 8;
  }
  
  private float getRotation() {
    return this.mRotation;
  }
  
  private void setSizeParameters(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, float paramFloat1, float paramFloat2) {
    MaterialProgressDrawable$Ring materialProgressDrawable$Ring = this.mRing;
    float f = (this.mResources.getDisplayMetrics()).density;
    this.mWidth = f * paramDouble1;
    this.mHeight = f * paramDouble2;
    materialProgressDrawable$Ring.setStrokeWidth((float)paramDouble4 * f);
    materialProgressDrawable$Ring.setCenterRadius(f * paramDouble3);
    materialProgressDrawable$Ring.setColorIndex(0);
    materialProgressDrawable$Ring.setArrowDimensions(paramFloat1 * f, f * paramFloat2);
    materialProgressDrawable$Ring.setInsets((int)this.mWidth, (int)this.mHeight);
  }
  
  private void setupAnimators() {
    MaterialProgressDrawable$Ring materialProgressDrawable$Ring = this.mRing;
    MaterialProgressDrawable$1 materialProgressDrawable$1 = new MaterialProgressDrawable$1(this, materialProgressDrawable$Ring);
    materialProgressDrawable$1.setRepeatCount(-1);
    materialProgressDrawable$1.setRepeatMode(1);
    materialProgressDrawable$1.setInterpolator(LINEAR_INTERPOLATOR);
    materialProgressDrawable$1.setAnimationListener(new MaterialProgressDrawable$2(this, materialProgressDrawable$Ring));
    this.mAnimation = materialProgressDrawable$1;
  }
  
  void applyFinishTranslation(float paramFloat, MaterialProgressDrawable$Ring paramMaterialProgressDrawable$Ring) {
    updateRingColor(paramFloat, paramMaterialProgressDrawable$Ring);
    float f1 = (float)(Math.floor((paramMaterialProgressDrawable$Ring.getStartingRotation() / 0.8F)) + 1.0D);
    float f2 = getMinProgressArc(paramMaterialProgressDrawable$Ring);
    float f3 = paramMaterialProgressDrawable$Ring.getStartingStartTrim();
    paramMaterialProgressDrawable$Ring.setStartTrim((paramMaterialProgressDrawable$Ring.getStartingEndTrim() - f2 - paramMaterialProgressDrawable$Ring.getStartingStartTrim()) * paramFloat + f3);
    paramMaterialProgressDrawable$Ring.setEndTrim(paramMaterialProgressDrawable$Ring.getStartingEndTrim());
    f2 = paramMaterialProgressDrawable$Ring.getStartingRotation();
    paramMaterialProgressDrawable$Ring.setRotation((f1 - paramMaterialProgressDrawable$Ring.getStartingRotation()) * paramFloat + f2);
  }
  
  public void draw(Canvas paramCanvas) {
    Rect rect = getBounds();
    int i = paramCanvas.save();
    paramCanvas.rotate(this.mRotation, rect.exactCenterX(), rect.exactCenterY());
    this.mRing.draw(paramCanvas, rect);
    paramCanvas.restoreToCount(i);
  }
  
  public int getAlpha() {
    return this.mRing.getAlpha();
  }
  
  public int getIntrinsicHeight() {
    return (int)this.mHeight;
  }
  
  public int getIntrinsicWidth() {
    return (int)this.mWidth;
  }
  
  float getMinProgressArc(MaterialProgressDrawable$Ring paramMaterialProgressDrawable$Ring) {
    return (float)Math.toRadians(paramMaterialProgressDrawable$Ring.getStrokeWidth() / 6.283185307179586D * paramMaterialProgressDrawable$Ring.getCenterRadius());
  }
  
  public int getOpacity() {
    return -3;
  }
  
  public boolean isRunning() {
    ArrayList<Animation> arrayList = this.mAnimators;
    int j = arrayList.size();
    for (int i = 0; i < j; i++) {
      Animation animation = arrayList.get(i);
      if (animation.hasStarted() && !animation.hasEnded())
        return true; 
    } 
    return false;
  }
  
  public void setAlpha(int paramInt) {
    this.mRing.setAlpha(paramInt);
  }
  
  public void setArrowScale(float paramFloat) {
    this.mRing.setArrowScale(paramFloat);
  }
  
  public void setBackgroundColor(int paramInt) {
    this.mRing.setBackgroundColor(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter) {
    this.mRing.setColorFilter(paramColorFilter);
  }
  
  public void setColorSchemeColors(int... paramVarArgs) {
    this.mRing.setColors(paramVarArgs);
    this.mRing.setColorIndex(0);
  }
  
  public void setProgressRotation(float paramFloat) {
    this.mRing.setRotation(paramFloat);
  }
  
  void setRotation(float paramFloat) {
    this.mRotation = paramFloat;
    invalidateSelf();
  }
  
  public void setStartEndTrim(float paramFloat1, float paramFloat2) {
    this.mRing.setStartTrim(paramFloat1);
    this.mRing.setEndTrim(paramFloat2);
  }
  
  public void showArrow(boolean paramBoolean) {
    this.mRing.setShowArrow(paramBoolean);
  }
  
  public void start() {
    this.mAnimation.reset();
    this.mRing.storeOriginals();
    if (this.mRing.getEndTrim() != this.mRing.getStartTrim()) {
      this.mFinishing = true;
      this.mAnimation.setDuration(666L);
      this.mParent.startAnimation(this.mAnimation);
      return;
    } 
    this.mRing.setColorIndex(0);
    this.mRing.resetOriginals();
    this.mAnimation.setDuration(1332L);
    this.mParent.startAnimation(this.mAnimation);
  }
  
  public void stop() {
    this.mParent.clearAnimation();
    setRotation(0.0F);
    this.mRing.setShowArrow(false);
    this.mRing.setColorIndex(0);
    this.mRing.resetOriginals();
  }
  
  void updateRingColor(float paramFloat, MaterialProgressDrawable$Ring paramMaterialProgressDrawable$Ring) {
    if (paramFloat > 0.75F)
      paramMaterialProgressDrawable$Ring.setColor(evaluateColorChange((paramFloat - 0.75F) / 0.25F, paramMaterialProgressDrawable$Ring.getStartingColor(), paramMaterialProgressDrawable$Ring.getNextColor())); 
  }
  
  public void updateSizes(int paramInt) {
    if (paramInt == 0) {
      setSizeParameters(56.0D, 56.0D, 12.5D, 3.0D, 12.0F, 6.0F);
      return;
    } 
    setSizeParameters(40.0D, 40.0D, 8.75D, 2.5D, 10.0F, 5.0F);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\MaterialProgressDrawable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */