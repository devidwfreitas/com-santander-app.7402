package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.R;
import android.support.v4.content.res.ConfigurationHelper;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.AppCompatImageHelper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;

@CoordinatorLayout$DefaultBehavior(FloatingActionButton$Behavior.class)
public class FloatingActionButton extends VisibilityAwareImageButton {
  private static final int AUTO_MINI_LARGEST_SCREEN_WIDTH = 470;
  
  private static final String LOG_TAG = "FloatingActionButton";
  
  public static final int SIZE_AUTO = -1;
  
  public static final int SIZE_MINI = 1;
  
  public static final int SIZE_NORMAL = 0;
  
  private ColorStateList mBackgroundTint;
  
  private PorterDuff.Mode mBackgroundTintMode;
  
  private int mBorderWidth;
  
  boolean mCompatPadding;
  
  private AppCompatImageHelper mImageHelper;
  
  int mImagePadding;
  
  private FloatingActionButtonImpl mImpl;
  
  private int mMaxImageSize;
  
  private int mRippleColor;
  
  final Rect mShadowPadding = new Rect();
  
  private int mSize;
  
  private final Rect mTouchArea = new Rect();
  
  public FloatingActionButton(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public FloatingActionButton(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public FloatingActionButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    ThemeUtils.checkAppCompatTheme(paramContext);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.FloatingActionButton, paramInt, R.style.Widget_Design_FloatingActionButton);
    this.mBackgroundTint = typedArray.getColorStateList(R.styleable.FloatingActionButton_backgroundTint);
    this.mBackgroundTintMode = ViewUtils.parseTintMode(typedArray.getInt(R.styleable.FloatingActionButton_backgroundTintMode, -1), null);
    this.mRippleColor = typedArray.getColor(R.styleable.FloatingActionButton_rippleColor, 0);
    this.mSize = typedArray.getInt(R.styleable.FloatingActionButton_fabSize, -1);
    this.mBorderWidth = typedArray.getDimensionPixelSize(R.styleable.FloatingActionButton_borderWidth, 0);
    float f1 = typedArray.getDimension(R.styleable.FloatingActionButton_elevation, 0.0F);
    float f2 = typedArray.getDimension(R.styleable.FloatingActionButton_pressedTranslationZ, 0.0F);
    this.mCompatPadding = typedArray.getBoolean(R.styleable.FloatingActionButton_useCompatPadding, false);
    typedArray.recycle();
    this.mImageHelper = new AppCompatImageHelper((ImageView)this);
    this.mImageHelper.loadFromAttributes(paramAttributeSet, paramInt);
    this.mMaxImageSize = (int)getResources().getDimension(R.dimen.design_fab_image_size);
    getImpl().setBackgroundDrawable(this.mBackgroundTint, this.mBackgroundTintMode, this.mRippleColor, this.mBorderWidth);
    getImpl().setElevation(f1);
    getImpl().setPressedTranslationZ(f2);
  }
  
  private FloatingActionButtonImpl createImpl() {
    int i = Build.VERSION.SDK_INT;
    return (i >= 21) ? new FloatingActionButtonLollipop(this, new FloatingActionButton$ShadowDelegateImpl(this), ViewUtils.DEFAULT_ANIMATOR_CREATOR) : ((i >= 14) ? new FloatingActionButtonIcs(this, new FloatingActionButton$ShadowDelegateImpl(this), ViewUtils.DEFAULT_ANIMATOR_CREATOR) : new FloatingActionButtonGingerbread(this, new FloatingActionButton$ShadowDelegateImpl(this), ViewUtils.DEFAULT_ANIMATOR_CREATOR));
  }
  
  private FloatingActionButtonImpl getImpl() {
    if (this.mImpl == null)
      this.mImpl = createImpl(); 
    return this.mImpl;
  }
  
  private int getSizeDimension(int paramInt) {
    Resources resources = getResources();
    switch (paramInt) {
      default:
        return resources.getDimensionPixelSize(R.dimen.design_fab_size_normal);
      case -1:
        return (Math.max(ConfigurationHelper.getScreenWidthDp(resources), ConfigurationHelper.getScreenHeightDp(resources)) < 470) ? getSizeDimension(1) : getSizeDimension(0);
      case 1:
        break;
    } 
    return resources.getDimensionPixelSize(R.dimen.design_fab_size_mini);
  }
  
  private static int resolveAdjustedSize(int paramInt1, int paramInt2) {
    int i = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    switch (i) {
      default:
        return paramInt1;
      case -2147483648:
        return Math.min(paramInt1, paramInt2);
      case 1073741824:
        break;
    } 
    return paramInt2;
  }
  
  @Nullable
  private FloatingActionButtonImpl$InternalVisibilityChangedListener wrapOnVisibilityChangedListener(@Nullable FloatingActionButton$OnVisibilityChangedListener paramFloatingActionButton$OnVisibilityChangedListener) {
    return (paramFloatingActionButton$OnVisibilityChangedListener == null) ? null : new FloatingActionButton$1(this, paramFloatingActionButton$OnVisibilityChangedListener);
  }
  
  protected void drawableStateChanged() {
    super.drawableStateChanged();
    getImpl().onDrawableStateChanged(getDrawableState());
  }
  
  @Nullable
  public ColorStateList getBackgroundTintList() {
    return this.mBackgroundTint;
  }
  
  @Nullable
  public PorterDuff.Mode getBackgroundTintMode() {
    return this.mBackgroundTintMode;
  }
  
  public float getCompatElevation() {
    return getImpl().getElevation();
  }
  
  @NonNull
  public Drawable getContentBackground() {
    return getImpl().getContentBackground();
  }
  
  public boolean getContentRect(@NonNull Rect paramRect) {
    boolean bool = false;
    if (ViewCompat.isLaidOut((View)this)) {
      paramRect.set(0, 0, getWidth(), getHeight());
      paramRect.left += this.mShadowPadding.left;
      paramRect.top += this.mShadowPadding.top;
      paramRect.right -= this.mShadowPadding.right;
      paramRect.bottom -= this.mShadowPadding.bottom;
      bool = true;
    } 
    return bool;
  }
  
  @ColorInt
  public int getRippleColor() {
    return this.mRippleColor;
  }
  
  public int getSize() {
    return this.mSize;
  }
  
  int getSizeDimension() {
    return getSizeDimension(this.mSize);
  }
  
  public boolean getUseCompatPadding() {
    return this.mCompatPadding;
  }
  
  public void hide() {
    hide((FloatingActionButton$OnVisibilityChangedListener)null);
  }
  
  public void hide(@Nullable FloatingActionButton$OnVisibilityChangedListener paramFloatingActionButton$OnVisibilityChangedListener) {
    hide(paramFloatingActionButton$OnVisibilityChangedListener, true);
  }
  
  void hide(@Nullable FloatingActionButton$OnVisibilityChangedListener paramFloatingActionButton$OnVisibilityChangedListener, boolean paramBoolean) {
    getImpl().hide(wrapOnVisibilityChangedListener(paramFloatingActionButton$OnVisibilityChangedListener), paramBoolean);
  }
  
  @TargetApi(11)
  public void jumpDrawablesToCurrentState() {
    super.jumpDrawablesToCurrentState();
    getImpl().jumpDrawableToCurrentState();
  }
  
  protected void onAttachedToWindow() {
    super.onAttachedToWindow();
    getImpl().onAttachedToWindow();
  }
  
  protected void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    getImpl().onDetachedFromWindow();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    int i = getSizeDimension();
    this.mImagePadding = (i - this.mMaxImageSize) / 2;
    getImpl().updatePadding();
    paramInt1 = Math.min(resolveAdjustedSize(i, paramInt1), resolveAdjustedSize(i, paramInt2));
    setMeasuredDimension(this.mShadowPadding.left + paramInt1 + this.mShadowPadding.right, paramInt1 + this.mShadowPadding.top + this.mShadowPadding.bottom);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    switch (paramMotionEvent.getAction()) {
      default:
        return super.onTouchEvent(paramMotionEvent);
      case 0:
        break;
    } 
    if (getContentRect(this.mTouchArea) && !this.mTouchArea.contains((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))
      return false; 
  }
  
  public void setBackgroundColor(int paramInt) {
    Log.i("FloatingActionButton", "Setting a custom background is not supported.");
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable) {
    Log.i("FloatingActionButton", "Setting a custom background is not supported.");
  }
  
  public void setBackgroundResource(int paramInt) {
    Log.i("FloatingActionButton", "Setting a custom background is not supported.");
  }
  
  public void setBackgroundTintList(@Nullable ColorStateList paramColorStateList) {
    if (this.mBackgroundTint != paramColorStateList) {
      this.mBackgroundTint = paramColorStateList;
      getImpl().setBackgroundTintList(paramColorStateList);
    } 
  }
  
  public void setBackgroundTintMode(@Nullable PorterDuff.Mode paramMode) {
    if (this.mBackgroundTintMode != paramMode) {
      this.mBackgroundTintMode = paramMode;
      getImpl().setBackgroundTintMode(paramMode);
    } 
  }
  
  public void setCompatElevation(float paramFloat) {
    getImpl().setElevation(paramFloat);
  }
  
  public void setImageResource(@DrawableRes int paramInt) {
    this.mImageHelper.setImageResource(paramInt);
  }
  
  public void setRippleColor(@ColorInt int paramInt) {
    if (this.mRippleColor != paramInt) {
      this.mRippleColor = paramInt;
      getImpl().setRippleColor(paramInt);
    } 
  }
  
  public void setSize(int paramInt) {
    if (paramInt != this.mSize) {
      this.mSize = paramInt;
      requestLayout();
    } 
  }
  
  public void setUseCompatPadding(boolean paramBoolean) {
    if (this.mCompatPadding != paramBoolean) {
      this.mCompatPadding = paramBoolean;
      getImpl().onCompatShadowChanged();
    } 
  }
  
  public void show() {
    show((FloatingActionButton$OnVisibilityChangedListener)null);
  }
  
  public void show(@Nullable FloatingActionButton$OnVisibilityChangedListener paramFloatingActionButton$OnVisibilityChangedListener) {
    show(paramFloatingActionButton$OnVisibilityChangedListener, true);
  }
  
  void show(FloatingActionButton$OnVisibilityChangedListener paramFloatingActionButton$OnVisibilityChangedListener, boolean paramBoolean) {
    getImpl().show(wrapOnVisibilityChangedListener(paramFloatingActionButton$OnVisibilityChangedListener), paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\FloatingActionButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */