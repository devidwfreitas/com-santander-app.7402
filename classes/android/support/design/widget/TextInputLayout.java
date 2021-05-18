package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.os.Build;
import android.os.Parcelable;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.annotation.VisibleForTesting;
import android.support.design.R;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.widget.Space;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.widget.AppCompatDrawableManager;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.DrawableUtils;
import android.support.v7.widget.TintTypedArray;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

public class TextInputLayout extends LinearLayout {
  private static final int ANIMATION_DURATION = 200;
  
  private static final int INVALID_MAX_LENGTH = -1;
  
  private static final String LOG_TAG = "TextInputLayout";
  
  private ValueAnimatorCompat mAnimator;
  
  final CollapsingTextHelper mCollapsingTextHelper = new CollapsingTextHelper((View)this);
  
  boolean mCounterEnabled;
  
  private int mCounterMaxLength;
  
  private int mCounterOverflowTextAppearance;
  
  private boolean mCounterOverflowed;
  
  private int mCounterTextAppearance;
  
  private TextView mCounterView;
  
  private ColorStateList mDefaultTextColor;
  
  EditText mEditText;
  
  private CharSequence mError;
  
  private boolean mErrorEnabled;
  
  private boolean mErrorShown;
  
  private int mErrorTextAppearance;
  
  TextView mErrorView;
  
  private ColorStateList mFocusedTextColor;
  
  private boolean mHasPasswordToggleTintList;
  
  private boolean mHasPasswordToggleTintMode;
  
  private boolean mHasReconstructedEditTextBackground;
  
  private CharSequence mHint;
  
  private boolean mHintAnimationEnabled;
  
  private boolean mHintEnabled;
  
  private boolean mHintExpanded;
  
  private boolean mInDrawableStateChanged;
  
  private LinearLayout mIndicatorArea;
  
  private int mIndicatorsAdded;
  
  private final FrameLayout mInputFrame;
  
  private Drawable mOriginalEditTextEndDrawable;
  
  private CharSequence mPasswordToggleContentDesc;
  
  private Drawable mPasswordToggleDrawable;
  
  private Drawable mPasswordToggleDummyDrawable;
  
  private boolean mPasswordToggleEnabled;
  
  private ColorStateList mPasswordToggleTintList;
  
  private PorterDuff.Mode mPasswordToggleTintMode;
  
  private CheckableImageButton mPasswordToggleView;
  
  private boolean mPasswordToggledVisible;
  
  private boolean mRestoringSavedState;
  
  private Paint mTmpPaint;
  
  private final Rect mTmpRect = new Rect();
  
  private Typeface mTypeface;
  
  public TextInputLayout(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public TextInputLayout(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public TextInputLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet);
    ThemeUtils.checkAppCompatTheme(paramContext);
    setOrientation(1);
    setWillNotDraw(false);
    setAddStatesFromChildren(true);
    this.mInputFrame = new FrameLayout(paramContext);
    this.mInputFrame.setAddStatesFromChildren(true);
    addView((View)this.mInputFrame);
    this.mCollapsingTextHelper.setTextSizeInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
    this.mCollapsingTextHelper.setPositionInterpolator((Interpolator)new AccelerateInterpolator());
    this.mCollapsingTextHelper.setCollapsedTextGravity(8388659);
    TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.TextInputLayout, paramInt, R.style.Widget_Design_TextInputLayout);
    this.mHintEnabled = tintTypedArray.getBoolean(R.styleable.TextInputLayout_hintEnabled, true);
    setHint(tintTypedArray.getText(R.styleable.TextInputLayout_android_hint));
    this.mHintAnimationEnabled = tintTypedArray.getBoolean(R.styleable.TextInputLayout_hintAnimationEnabled, true);
    if (tintTypedArray.hasValue(R.styleable.TextInputLayout_android_textColorHint)) {
      ColorStateList colorStateList = tintTypedArray.getColorStateList(R.styleable.TextInputLayout_android_textColorHint);
      this.mFocusedTextColor = colorStateList;
      this.mDefaultTextColor = colorStateList;
    } 
    if (tintTypedArray.getResourceId(R.styleable.TextInputLayout_hintTextAppearance, -1) != -1)
      setHintTextAppearance(tintTypedArray.getResourceId(R.styleable.TextInputLayout_hintTextAppearance, 0)); 
    this.mErrorTextAppearance = tintTypedArray.getResourceId(R.styleable.TextInputLayout_errorTextAppearance, 0);
    boolean bool1 = tintTypedArray.getBoolean(R.styleable.TextInputLayout_errorEnabled, false);
    boolean bool2 = tintTypedArray.getBoolean(R.styleable.TextInputLayout_counterEnabled, false);
    setCounterMaxLength(tintTypedArray.getInt(R.styleable.TextInputLayout_counterMaxLength, -1));
    this.mCounterTextAppearance = tintTypedArray.getResourceId(R.styleable.TextInputLayout_counterTextAppearance, 0);
    this.mCounterOverflowTextAppearance = tintTypedArray.getResourceId(R.styleable.TextInputLayout_counterOverflowTextAppearance, 0);
    this.mPasswordToggleEnabled = tintTypedArray.getBoolean(R.styleable.TextInputLayout_passwordToggleEnabled, false);
    this.mPasswordToggleDrawable = tintTypedArray.getDrawable(R.styleable.TextInputLayout_passwordToggleDrawable);
    this.mPasswordToggleContentDesc = tintTypedArray.getText(R.styleable.TextInputLayout_passwordToggleContentDescription);
    if (tintTypedArray.hasValue(R.styleable.TextInputLayout_passwordToggleTint)) {
      this.mHasPasswordToggleTintList = true;
      this.mPasswordToggleTintList = tintTypedArray.getColorStateList(R.styleable.TextInputLayout_passwordToggleTint);
    } 
    if (tintTypedArray.hasValue(R.styleable.TextInputLayout_passwordToggleTintMode)) {
      this.mHasPasswordToggleTintMode = true;
      this.mPasswordToggleTintMode = ViewUtils.parseTintMode(tintTypedArray.getInt(R.styleable.TextInputLayout_passwordToggleTintMode, -1), null);
    } 
    tintTypedArray.recycle();
    setErrorEnabled(bool1);
    setCounterEnabled(bool2);
    applyPasswordToggleTint();
    if (ViewCompat.getImportantForAccessibility((View)this) == 0)
      ViewCompat.setImportantForAccessibility((View)this, 1); 
    ViewCompat.setAccessibilityDelegate((View)this, new TextInputLayout$TextInputAccessibilityDelegate(this));
  }
  
  private void addIndicator(TextView paramTextView, int paramInt) {
    if (this.mIndicatorArea == null) {
      this.mIndicatorArea = new LinearLayout(getContext());
      this.mIndicatorArea.setOrientation(0);
      addView((View)this.mIndicatorArea, -1, -2);
      Space space = new Space(getContext());
      LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, 0, 1.0F);
      this.mIndicatorArea.addView((View)space, (ViewGroup.LayoutParams)layoutParams);
      if (this.mEditText != null)
        adjustIndicatorPadding(); 
    } 
    this.mIndicatorArea.setVisibility(0);
    this.mIndicatorArea.addView((View)paramTextView, paramInt);
    this.mIndicatorsAdded++;
  }
  
  private void adjustIndicatorPadding() {
    ViewCompat.setPaddingRelative((View)this.mIndicatorArea, ViewCompat.getPaddingStart((View)this.mEditText), 0, ViewCompat.getPaddingEnd((View)this.mEditText), this.mEditText.getPaddingBottom());
  }
  
  private void applyPasswordToggleTint() {
    if (this.mPasswordToggleDrawable != null && (this.mHasPasswordToggleTintList || this.mHasPasswordToggleTintMode)) {
      this.mPasswordToggleDrawable = DrawableCompat.wrap(this.mPasswordToggleDrawable).mutate();
      if (this.mHasPasswordToggleTintList)
        DrawableCompat.setTintList(this.mPasswordToggleDrawable, this.mPasswordToggleTintList); 
      if (this.mHasPasswordToggleTintMode)
        DrawableCompat.setTintMode(this.mPasswordToggleDrawable, this.mPasswordToggleTintMode); 
      if (this.mPasswordToggleView != null && this.mPasswordToggleView.getDrawable() != this.mPasswordToggleDrawable)
        this.mPasswordToggleView.setImageDrawable(this.mPasswordToggleDrawable); 
    } 
  }
  
  private static boolean arrayContains(int[] paramArrayOfint, int paramInt) {
    boolean bool = false;
    int j = paramArrayOfint.length;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        if (paramArrayOfint[i] == paramInt)
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  private void collapseHint(boolean paramBoolean) {
    if (this.mAnimator != null && this.mAnimator.isRunning())
      this.mAnimator.cancel(); 
    if (paramBoolean && this.mHintAnimationEnabled) {
      animateToExpansionFraction(1.0F);
    } else {
      this.mCollapsingTextHelper.setExpansionFraction(1.0F);
    } 
    this.mHintExpanded = false;
  }
  
  private void ensureBackgroundDrawableStateWorkaround() {
    int i = Build.VERSION.SDK_INT;
    if (i == 21 || i == 22) {
      Drawable drawable = this.mEditText.getBackground();
      if (drawable != null && !this.mHasReconstructedEditTextBackground) {
        Drawable drawable1 = drawable.getConstantState().newDrawable();
        if (drawable instanceof DrawableContainer)
          this.mHasReconstructedEditTextBackground = DrawableUtils.setContainerConstantState((DrawableContainer)drawable, drawable1.getConstantState()); 
        if (!this.mHasReconstructedEditTextBackground) {
          ViewCompat.setBackground((View)this.mEditText, drawable1);
          this.mHasReconstructedEditTextBackground = true;
          return;
        } 
      } 
    } 
  }
  
  private void expandHint(boolean paramBoolean) {
    if (this.mAnimator != null && this.mAnimator.isRunning())
      this.mAnimator.cancel(); 
    if (paramBoolean && this.mHintAnimationEnabled) {
      animateToExpansionFraction(0.0F);
    } else {
      this.mCollapsingTextHelper.setExpansionFraction(0.0F);
    } 
    this.mHintExpanded = true;
  }
  
  private boolean hasPasswordTransformation() {
    return (this.mEditText != null && this.mEditText.getTransformationMethod() instanceof PasswordTransformationMethod);
  }
  
  private static void recursiveSetEnabled(ViewGroup paramViewGroup, boolean paramBoolean) {
    int j = paramViewGroup.getChildCount();
    for (int i = 0; i < j; i++) {
      View view = paramViewGroup.getChildAt(i);
      view.setEnabled(paramBoolean);
      if (view instanceof ViewGroup)
        recursiveSetEnabled((ViewGroup)view, paramBoolean); 
    } 
  }
  
  private void removeIndicator(TextView paramTextView) {
    if (this.mIndicatorArea != null) {
      this.mIndicatorArea.removeView((View)paramTextView);
      int i = this.mIndicatorsAdded - 1;
      this.mIndicatorsAdded = i;
      if (i == 0)
        this.mIndicatorArea.setVisibility(8); 
    } 
  }
  
  private void setEditText(EditText paramEditText) {
    if (this.mEditText != null)
      throw new IllegalArgumentException("We already have an EditText, can only have one"); 
    if (!(paramEditText instanceof TextInputEditText))
      Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead."); 
    this.mEditText = paramEditText;
    if (!hasPasswordTransformation())
      this.mCollapsingTextHelper.setTypefaces(this.mEditText.getTypeface()); 
    this.mCollapsingTextHelper.setExpandedTextSize(this.mEditText.getTextSize());
    int i = this.mEditText.getGravity();
    this.mCollapsingTextHelper.setCollapsedTextGravity(i & 0xFFFFFF8F | 0x30);
    this.mCollapsingTextHelper.setExpandedTextGravity(i);
    this.mEditText.addTextChangedListener(new TextInputLayout$1(this));
    if (this.mDefaultTextColor == null)
      this.mDefaultTextColor = this.mEditText.getHintTextColors(); 
    if (this.mHintEnabled && TextUtils.isEmpty(this.mHint)) {
      setHint(this.mEditText.getHint());
      this.mEditText.setHint(null);
    } 
    if (this.mCounterView != null)
      updateCounter(this.mEditText.getText().length()); 
    if (this.mIndicatorArea != null)
      adjustIndicatorPadding(); 
    updatePasswordToggleView();
    updateLabelState(false, true);
  }
  
  private void setError(@Nullable CharSequence paramCharSequence, boolean paramBoolean) {
    boolean bool = true;
    this.mError = paramCharSequence;
    if (!this.mErrorEnabled) {
      if (TextUtils.isEmpty(paramCharSequence))
        return; 
      setErrorEnabled(true);
    } 
    if (TextUtils.isEmpty(paramCharSequence))
      bool = false; 
    this.mErrorShown = bool;
    ViewCompat.animate((View)this.mErrorView).cancel();
    if (this.mErrorShown) {
      this.mErrorView.setText(paramCharSequence);
      this.mErrorView.setVisibility(0);
      if (paramBoolean) {
        if (ViewCompat.getAlpha((View)this.mErrorView) == 1.0F)
          ViewCompat.setAlpha((View)this.mErrorView, 0.0F); 
        ViewCompat.animate((View)this.mErrorView).alpha(1.0F).setDuration(200L).setInterpolator(AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR).setListener((ViewPropertyAnimatorListener)new TextInputLayout$2(this)).start();
      } else {
        ViewCompat.setAlpha((View)this.mErrorView, 1.0F);
      } 
    } else if (this.mErrorView.getVisibility() == 0) {
      if (paramBoolean) {
        ViewCompat.animate((View)this.mErrorView).alpha(0.0F).setDuration(200L).setInterpolator(AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR).setListener((ViewPropertyAnimatorListener)new TextInputLayout$3(this, paramCharSequence)).start();
      } else {
        this.mErrorView.setText(paramCharSequence);
        this.mErrorView.setVisibility(4);
      } 
    } 
    updateEditTextBackground();
    updateLabelState(paramBoolean);
  }
  
  private void setHintInternal(CharSequence paramCharSequence) {
    this.mHint = paramCharSequence;
    this.mCollapsingTextHelper.setText(paramCharSequence);
  }
  
  private boolean shouldShowPasswordIcon() {
    return (this.mPasswordToggleEnabled && (hasPasswordTransformation() || this.mPasswordToggledVisible));
  }
  
  private void updateEditTextBackground() {
    if (this.mEditText != null) {
      Drawable drawable = this.mEditText.getBackground();
      if (drawable != null) {
        ensureBackgroundDrawableStateWorkaround();
        Drawable drawable1 = drawable;
        if (DrawableUtils.canSafelyMutateDrawable(drawable))
          drawable1 = drawable.mutate(); 
        if (this.mErrorShown && this.mErrorView != null) {
          drawable1.setColorFilter((ColorFilter)AppCompatDrawableManager.getPorterDuffColorFilter(this.mErrorView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
          return;
        } 
        if (this.mCounterOverflowed && this.mCounterView != null) {
          drawable1.setColorFilter((ColorFilter)AppCompatDrawableManager.getPorterDuffColorFilter(this.mCounterView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
          return;
        } 
        DrawableCompat.clearColorFilter(drawable1);
        this.mEditText.refreshDrawableState();
        return;
      } 
    } 
  }
  
  private void updateInputLayoutMargins() {
    boolean bool;
    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams)this.mInputFrame.getLayoutParams();
    if (this.mHintEnabled) {
      if (this.mTmpPaint == null)
        this.mTmpPaint = new Paint(); 
      this.mTmpPaint.setTypeface(this.mCollapsingTextHelper.getCollapsedTypeface());
      this.mTmpPaint.setTextSize(this.mCollapsingTextHelper.getCollapsedTextSize());
      bool = (int)-this.mTmpPaint.ascent();
    } else {
      bool = false;
    } 
    if (bool != layoutParams.topMargin) {
      layoutParams.topMargin = bool;
      this.mInputFrame.requestLayout();
    } 
  }
  
  private void updatePasswordToggleView() {
    if (this.mEditText != null) {
      if (shouldShowPasswordIcon()) {
        if (this.mPasswordToggleView == null) {
          this.mPasswordToggleView = (CheckableImageButton)LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_password_icon, (ViewGroup)this.mInputFrame, false);
          this.mPasswordToggleView.setImageDrawable(this.mPasswordToggleDrawable);
          this.mPasswordToggleView.setContentDescription(this.mPasswordToggleContentDesc);
          this.mInputFrame.addView((View)this.mPasswordToggleView);
          this.mPasswordToggleView.setOnClickListener(new TextInputLayout$4(this));
        } 
        if (this.mEditText != null && ViewCompat.getMinimumHeight((View)this.mEditText) <= 0)
          this.mEditText.setMinimumHeight(ViewCompat.getMinimumHeight((View)this.mPasswordToggleView)); 
        this.mPasswordToggleView.setVisibility(0);
        this.mPasswordToggleView.setChecked(this.mPasswordToggledVisible);
        if (this.mPasswordToggleDummyDrawable == null)
          this.mPasswordToggleDummyDrawable = (Drawable)new ColorDrawable(); 
        this.mPasswordToggleDummyDrawable.setBounds(0, 0, this.mPasswordToggleView.getMeasuredWidth(), 1);
        Drawable[] arrayOfDrawable = TextViewCompat.getCompoundDrawablesRelative((TextView)this.mEditText);
        if (arrayOfDrawable[2] != this.mPasswordToggleDummyDrawable)
          this.mOriginalEditTextEndDrawable = arrayOfDrawable[2]; 
        TextViewCompat.setCompoundDrawablesRelative((TextView)this.mEditText, arrayOfDrawable[0], arrayOfDrawable[1], this.mPasswordToggleDummyDrawable, arrayOfDrawable[3]);
        this.mPasswordToggleView.setPadding(this.mEditText.getPaddingLeft(), this.mEditText.getPaddingTop(), this.mEditText.getPaddingRight(), this.mEditText.getPaddingBottom());
        return;
      } 
      if (this.mPasswordToggleView != null && this.mPasswordToggleView.getVisibility() == 0)
        this.mPasswordToggleView.setVisibility(8); 
      if (this.mPasswordToggleDummyDrawable != null) {
        Drawable[] arrayOfDrawable = TextViewCompat.getCompoundDrawablesRelative((TextView)this.mEditText);
        if (arrayOfDrawable[2] == this.mPasswordToggleDummyDrawable) {
          TextViewCompat.setCompoundDrawablesRelative((TextView)this.mEditText, arrayOfDrawable[0], arrayOfDrawable[1], this.mOriginalEditTextEndDrawable, arrayOfDrawable[3]);
          this.mPasswordToggleDummyDrawable = null;
          return;
        } 
      } 
    } 
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams) {
    if (paramView instanceof EditText) {
      FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(paramLayoutParams);
      layoutParams.gravity = layoutParams.gravity & 0xFFFFFF8F | 0x10;
      this.mInputFrame.addView(paramView, (ViewGroup.LayoutParams)layoutParams);
      this.mInputFrame.setLayoutParams(paramLayoutParams);
      updateInputLayoutMargins();
      setEditText((EditText)paramView);
      return;
    } 
    super.addView(paramView, paramInt, paramLayoutParams);
  }
  
  @VisibleForTesting
  void animateToExpansionFraction(float paramFloat) {
    if (this.mCollapsingTextHelper.getExpansionFraction() == paramFloat)
      return; 
    if (this.mAnimator == null) {
      this.mAnimator = ViewUtils.createAnimator();
      this.mAnimator.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
      this.mAnimator.setDuration(200L);
      this.mAnimator.addUpdateListener(new TextInputLayout$5(this));
    } 
    this.mAnimator.setFloatValues(this.mCollapsingTextHelper.getExpansionFraction(), paramFloat);
    this.mAnimator.start();
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray) {
    this.mRestoringSavedState = true;
    super.dispatchRestoreInstanceState(paramSparseArray);
    this.mRestoringSavedState = false;
  }
  
  public void draw(Canvas paramCanvas) {
    super.draw(paramCanvas);
    if (this.mHintEnabled)
      this.mCollapsingTextHelper.draw(paramCanvas); 
  }
  
  protected void drawableStateChanged() {
    boolean bool1;
    boolean bool2 = true;
    if (this.mInDrawableStateChanged)
      return; 
    this.mInDrawableStateChanged = true;
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    if (!ViewCompat.isLaidOut((View)this) || !isEnabled())
      bool2 = false; 
    updateLabelState(bool2);
    updateEditTextBackground();
    if (this.mCollapsingTextHelper != null) {
      bool1 = this.mCollapsingTextHelper.setState(arrayOfInt) | false;
    } else {
      bool1 = false;
    } 
    if (bool1)
      invalidate(); 
    this.mInDrawableStateChanged = false;
  }
  
  public int getCounterMaxLength() {
    return this.mCounterMaxLength;
  }
  
  @Nullable
  public EditText getEditText() {
    return this.mEditText;
  }
  
  @Nullable
  public CharSequence getError() {
    return this.mErrorEnabled ? this.mError : null;
  }
  
  @Nullable
  public CharSequence getHint() {
    return this.mHintEnabled ? this.mHint : null;
  }
  
  @Nullable
  public CharSequence getPasswordVisibilityToggleContentDescription() {
    return this.mPasswordToggleContentDesc;
  }
  
  @Nullable
  public Drawable getPasswordVisibilityToggleDrawable() {
    return this.mPasswordToggleDrawable;
  }
  
  @NonNull
  public Typeface getTypeface() {
    return this.mTypeface;
  }
  
  public boolean isCounterEnabled() {
    return this.mCounterEnabled;
  }
  
  public boolean isErrorEnabled() {
    return this.mErrorEnabled;
  }
  
  public boolean isHintAnimationEnabled() {
    return this.mHintAnimationEnabled;
  }
  
  public boolean isHintEnabled() {
    return this.mHintEnabled;
  }
  
  @VisibleForTesting
  final boolean isHintExpanded() {
    return this.mHintExpanded;
  }
  
  public boolean isPasswordVisibilityToggleEnabled() {
    return this.mPasswordToggleEnabled;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.mHintEnabled && this.mEditText != null) {
      Rect rect = this.mTmpRect;
      ViewGroupUtils.getDescendantRect((ViewGroup)this, (View)this.mEditText, rect);
      paramInt1 = rect.left + this.mEditText.getCompoundPaddingLeft();
      paramInt3 = rect.right - this.mEditText.getCompoundPaddingRight();
      this.mCollapsingTextHelper.setExpandedBounds(paramInt1, rect.top + this.mEditText.getCompoundPaddingTop(), paramInt3, rect.bottom - this.mEditText.getCompoundPaddingBottom());
      this.mCollapsingTextHelper.setCollapsedBounds(paramInt1, getPaddingTop(), paramInt3, paramInt4 - paramInt2 - getPaddingBottom());
      this.mCollapsingTextHelper.recalculate();
    } 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    updatePasswordToggleView();
    super.onMeasure(paramInt1, paramInt2);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable) {
    if (!(paramParcelable instanceof TextInputLayout$SavedState)) {
      super.onRestoreInstanceState(paramParcelable);
      return;
    } 
    TextInputLayout$SavedState textInputLayout$SavedState = (TextInputLayout$SavedState)paramParcelable;
    super.onRestoreInstanceState(textInputLayout$SavedState.getSuperState());
    setError(textInputLayout$SavedState.error);
    requestLayout();
  }
  
  public Parcelable onSaveInstanceState() {
    TextInputLayout$SavedState textInputLayout$SavedState = new TextInputLayout$SavedState(super.onSaveInstanceState());
    if (this.mErrorShown)
      textInputLayout$SavedState.error = getError(); 
    return (Parcelable)textInputLayout$SavedState;
  }
  
  void passwordVisibilityToggleRequested() {
    if (this.mPasswordToggleEnabled) {
      int i = this.mEditText.getSelectionEnd();
      if (hasPasswordTransformation()) {
        this.mEditText.setTransformationMethod(null);
        this.mPasswordToggledVisible = true;
      } else {
        this.mEditText.setTransformationMethod((TransformationMethod)PasswordTransformationMethod.getInstance());
        this.mPasswordToggledVisible = false;
      } 
      this.mPasswordToggleView.setChecked(this.mPasswordToggledVisible);
      this.mEditText.setSelection(i);
    } 
  }
  
  public void setCounterEnabled(boolean paramBoolean) {
    if (this.mCounterEnabled != paramBoolean) {
      if (paramBoolean) {
        this.mCounterView = (TextView)new AppCompatTextView(getContext());
        this.mCounterView.setId(R.id.textinput_counter);
        if (this.mTypeface != null)
          this.mCounterView.setTypeface(this.mTypeface); 
        this.mCounterView.setMaxLines(1);
        try {
          TextViewCompat.setTextAppearance(this.mCounterView, this.mCounterTextAppearance);
        } catch (Exception exception) {
          TextViewCompat.setTextAppearance(this.mCounterView, R.style.TextAppearance_AppCompat_Caption);
          this.mCounterView.setTextColor(ContextCompat.getColor(getContext(), R.color.design_textinput_error_color_light));
        } 
        addIndicator(this.mCounterView, -1);
        if (this.mEditText == null) {
          updateCounter(0);
        } else {
          updateCounter(this.mEditText.getText().length());
        } 
      } else {
        removeIndicator(this.mCounterView);
        this.mCounterView = null;
      } 
      this.mCounterEnabled = paramBoolean;
    } 
  }
  
  public void setCounterMaxLength(int paramInt) {
    if (this.mCounterMaxLength != paramInt) {
      if (paramInt > 0) {
        this.mCounterMaxLength = paramInt;
      } else {
        this.mCounterMaxLength = -1;
      } 
      if (this.mCounterEnabled) {
        if (this.mEditText == null) {
          paramInt = 0;
        } else {
          paramInt = this.mEditText.getText().length();
        } 
        updateCounter(paramInt);
      } 
    } 
  }
  
  public void setEnabled(boolean paramBoolean) {
    recursiveSetEnabled((ViewGroup)this, paramBoolean);
    super.setEnabled(paramBoolean);
  }
  
  public void setError(@Nullable CharSequence paramCharSequence) {
    boolean bool;
    if (ViewCompat.isLaidOut((View)this) && isEnabled() && (this.mErrorView == null || !TextUtils.equals(this.mErrorView.getText(), paramCharSequence))) {
      bool = true;
    } else {
      bool = false;
    } 
    setError(paramCharSequence, bool);
  }
  
  public void setErrorEnabled(boolean paramBoolean) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mErrorEnabled : Z
    //   4: iload_1
    //   5: if_icmpeq -> 172
    //   8: aload_0
    //   9: getfield mErrorView : Landroid/widget/TextView;
    //   12: ifnull -> 25
    //   15: aload_0
    //   16: getfield mErrorView : Landroid/widget/TextView;
    //   19: invokestatic animate : (Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    //   22: invokevirtual cancel : ()V
    //   25: iload_1
    //   26: ifeq -> 179
    //   29: aload_0
    //   30: new android/support/v7/widget/AppCompatTextView
    //   33: dup
    //   34: aload_0
    //   35: invokevirtual getContext : ()Landroid/content/Context;
    //   38: invokespecial <init> : (Landroid/content/Context;)V
    //   41: putfield mErrorView : Landroid/widget/TextView;
    //   44: aload_0
    //   45: getfield mErrorView : Landroid/widget/TextView;
    //   48: getstatic android/support/design/R$id.textinput_error : I
    //   51: invokevirtual setId : (I)V
    //   54: aload_0
    //   55: getfield mTypeface : Landroid/graphics/Typeface;
    //   58: ifnull -> 72
    //   61: aload_0
    //   62: getfield mErrorView : Landroid/widget/TextView;
    //   65: aload_0
    //   66: getfield mTypeface : Landroid/graphics/Typeface;
    //   69: invokevirtual setTypeface : (Landroid/graphics/Typeface;)V
    //   72: aload_0
    //   73: getfield mErrorView : Landroid/widget/TextView;
    //   76: aload_0
    //   77: getfield mErrorTextAppearance : I
    //   80: invokestatic setTextAppearance : (Landroid/widget/TextView;I)V
    //   83: getstatic android/os/Build$VERSION.SDK_INT : I
    //   86: bipush #23
    //   88: if_icmplt -> 204
    //   91: aload_0
    //   92: getfield mErrorView : Landroid/widget/TextView;
    //   95: invokevirtual getTextColors : ()Landroid/content/res/ColorStateList;
    //   98: invokevirtual getDefaultColor : ()I
    //   101: istore_2
    //   102: iload_2
    //   103: ldc_w -65281
    //   106: if_icmpne -> 204
    //   109: iconst_1
    //   110: istore_2
    //   111: iload_2
    //   112: ifeq -> 142
    //   115: aload_0
    //   116: getfield mErrorView : Landroid/widget/TextView;
    //   119: getstatic android/support/v7/appcompat/R$style.TextAppearance_AppCompat_Caption : I
    //   122: invokestatic setTextAppearance : (Landroid/widget/TextView;I)V
    //   125: aload_0
    //   126: getfield mErrorView : Landroid/widget/TextView;
    //   129: aload_0
    //   130: invokevirtual getContext : ()Landroid/content/Context;
    //   133: getstatic android/support/design/R$color.design_textinput_error_color_light : I
    //   136: invokestatic getColor : (Landroid/content/Context;I)I
    //   139: invokevirtual setTextColor : (I)V
    //   142: aload_0
    //   143: getfield mErrorView : Landroid/widget/TextView;
    //   146: iconst_4
    //   147: invokevirtual setVisibility : (I)V
    //   150: aload_0
    //   151: getfield mErrorView : Landroid/widget/TextView;
    //   154: iconst_1
    //   155: invokestatic setAccessibilityLiveRegion : (Landroid/view/View;I)V
    //   158: aload_0
    //   159: aload_0
    //   160: getfield mErrorView : Landroid/widget/TextView;
    //   163: iconst_0
    //   164: invokespecial addIndicator : (Landroid/widget/TextView;I)V
    //   167: aload_0
    //   168: iload_1
    //   169: putfield mErrorEnabled : Z
    //   172: return
    //   173: astore_3
    //   174: iconst_1
    //   175: istore_2
    //   176: goto -> 111
    //   179: aload_0
    //   180: iconst_0
    //   181: putfield mErrorShown : Z
    //   184: aload_0
    //   185: invokespecial updateEditTextBackground : ()V
    //   188: aload_0
    //   189: aload_0
    //   190: getfield mErrorView : Landroid/widget/TextView;
    //   193: invokespecial removeIndicator : (Landroid/widget/TextView;)V
    //   196: aload_0
    //   197: aconst_null
    //   198: putfield mErrorView : Landroid/widget/TextView;
    //   201: goto -> 167
    //   204: iconst_0
    //   205: istore_2
    //   206: goto -> 111
    // Exception table:
    //   from	to	target	type
    //   72	102	173	java/lang/Exception
  }
  
  public void setErrorTextAppearance(@StyleRes int paramInt) {
    this.mErrorTextAppearance = paramInt;
    if (this.mErrorView != null)
      TextViewCompat.setTextAppearance(this.mErrorView, paramInt); 
  }
  
  public void setHint(@Nullable CharSequence paramCharSequence) {
    if (this.mHintEnabled) {
      setHintInternal(paramCharSequence);
      sendAccessibilityEvent(2048);
    } 
  }
  
  public void setHintAnimationEnabled(boolean paramBoolean) {
    this.mHintAnimationEnabled = paramBoolean;
  }
  
  public void setHintEnabled(boolean paramBoolean) {
    if (paramBoolean != this.mHintEnabled) {
      this.mHintEnabled = paramBoolean;
      CharSequence charSequence = this.mEditText.getHint();
      if (!this.mHintEnabled) {
        if (!TextUtils.isEmpty(this.mHint) && TextUtils.isEmpty(charSequence))
          this.mEditText.setHint(this.mHint); 
        setHintInternal((CharSequence)null);
      } else if (!TextUtils.isEmpty(charSequence)) {
        if (TextUtils.isEmpty(this.mHint))
          setHint(charSequence); 
        this.mEditText.setHint(null);
      } 
      if (this.mEditText != null)
        updateInputLayoutMargins(); 
    } 
  }
  
  public void setHintTextAppearance(@StyleRes int paramInt) {
    this.mCollapsingTextHelper.setCollapsedTextAppearance(paramInt);
    this.mFocusedTextColor = this.mCollapsingTextHelper.getCollapsedTextColor();
    if (this.mEditText != null) {
      updateLabelState(false);
      updateInputLayoutMargins();
    } 
  }
  
  public void setPasswordVisibilityToggleContentDescription(@StringRes int paramInt) {
    CharSequence charSequence;
    if (paramInt != 0) {
      charSequence = getResources().getText(paramInt);
    } else {
      charSequence = null;
    } 
    setPasswordVisibilityToggleContentDescription(charSequence);
  }
  
  public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence paramCharSequence) {
    this.mPasswordToggleContentDesc = paramCharSequence;
    if (this.mPasswordToggleView != null)
      this.mPasswordToggleView.setContentDescription(paramCharSequence); 
  }
  
  public void setPasswordVisibilityToggleDrawable(@DrawableRes int paramInt) {
    Drawable drawable;
    if (paramInt != 0) {
      drawable = AppCompatResources.getDrawable(getContext(), paramInt);
    } else {
      drawable = null;
    } 
    setPasswordVisibilityToggleDrawable(drawable);
  }
  
  public void setPasswordVisibilityToggleDrawable(@Nullable Drawable paramDrawable) {
    this.mPasswordToggleDrawable = paramDrawable;
    if (this.mPasswordToggleView != null)
      this.mPasswordToggleView.setImageDrawable(paramDrawable); 
  }
  
  public void setPasswordVisibilityToggleEnabled(boolean paramBoolean) {
    if (this.mPasswordToggleEnabled != paramBoolean) {
      this.mPasswordToggleEnabled = paramBoolean;
      if (!paramBoolean && this.mPasswordToggledVisible && this.mEditText != null)
        this.mEditText.setTransformationMethod((TransformationMethod)PasswordTransformationMethod.getInstance()); 
      this.mPasswordToggledVisible = false;
      updatePasswordToggleView();
    } 
  }
  
  public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList paramColorStateList) {
    this.mPasswordToggleTintList = paramColorStateList;
    this.mHasPasswordToggleTintList = true;
    applyPasswordToggleTint();
  }
  
  public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode paramMode) {
    this.mPasswordToggleTintMode = paramMode;
    this.mHasPasswordToggleTintMode = true;
    applyPasswordToggleTint();
  }
  
  public void setTypeface(@Nullable Typeface paramTypeface) {
    if (paramTypeface != this.mTypeface) {
      this.mTypeface = paramTypeface;
      this.mCollapsingTextHelper.setTypefaces(paramTypeface);
      if (this.mCounterView != null)
        this.mCounterView.setTypeface(paramTypeface); 
      if (this.mErrorView != null)
        this.mErrorView.setTypeface(paramTypeface); 
    } 
  }
  
  void updateCounter(int paramInt) {
    boolean bool = this.mCounterOverflowed;
    if (this.mCounterMaxLength == -1) {
      this.mCounterView.setText(String.valueOf(paramInt));
      this.mCounterOverflowed = false;
    } else {
      boolean bool1;
      if (paramInt > this.mCounterMaxLength) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      this.mCounterOverflowed = bool1;
      if (bool != this.mCounterOverflowed) {
        int i;
        TextView textView = this.mCounterView;
        if (this.mCounterOverflowed) {
          i = this.mCounterOverflowTextAppearance;
        } else {
          i = this.mCounterTextAppearance;
        } 
        TextViewCompat.setTextAppearance(textView, i);
      } 
      this.mCounterView.setText(getContext().getString(R.string.character_counter_pattern, new Object[] { Integer.valueOf(paramInt), Integer.valueOf(this.mCounterMaxLength) }));
    } 
    if (this.mEditText != null && bool != this.mCounterOverflowed) {
      updateLabelState(false);
      updateEditTextBackground();
    } 
  }
  
  void updateLabelState(boolean paramBoolean) {
    updateLabelState(paramBoolean, false);
  }
  
  void updateLabelState(boolean paramBoolean1, boolean paramBoolean2) {
    boolean bool1;
    boolean bool2 = true;
    boolean bool3 = isEnabled();
    if (this.mEditText != null && !TextUtils.isEmpty((CharSequence)this.mEditText.getText())) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    boolean bool4 = arrayContains(getDrawableState(), 16842908);
    if (TextUtils.isEmpty(getError()))
      bool2 = false; 
    if (this.mDefaultTextColor != null)
      this.mCollapsingTextHelper.setExpandedTextColor(this.mDefaultTextColor); 
    if (bool3 && this.mCounterOverflowed && this.mCounterView != null) {
      this.mCollapsingTextHelper.setCollapsedTextColor(this.mCounterView.getTextColors());
    } else if (bool3 && bool4 && this.mFocusedTextColor != null) {
      this.mCollapsingTextHelper.setCollapsedTextColor(this.mFocusedTextColor);
    } else if (this.mDefaultTextColor != null) {
      this.mCollapsingTextHelper.setCollapsedTextColor(this.mDefaultTextColor);
    } 
    if (bool1 || (isEnabled() && (bool4 || bool2))) {
      if (paramBoolean2 || this.mHintExpanded)
        collapseHint(paramBoolean1); 
      return;
    } 
    if (paramBoolean2 || !this.mHintExpanded) {
      expandHint(paramBoolean1);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\TextInputLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */