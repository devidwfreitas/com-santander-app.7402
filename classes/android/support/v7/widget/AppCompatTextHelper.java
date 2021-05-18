package android.support.v7.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.RequiresApi;
import android.support.v7.appcompat.R;
import android.support.v7.text.AllCapsTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;

@TargetApi(9)
@RequiresApi(9)
class AppCompatTextHelper {
  private TintInfo mDrawableBottomTint;
  
  private TintInfo mDrawableLeftTint;
  
  private TintInfo mDrawableRightTint;
  
  private TintInfo mDrawableTopTint;
  
  final TextView mView;
  
  AppCompatTextHelper(TextView paramTextView) {
    this.mView = paramTextView;
  }
  
  static AppCompatTextHelper create(TextView paramTextView) {
    return (Build.VERSION.SDK_INT >= 17) ? new AppCompatTextHelperV17(paramTextView) : new AppCompatTextHelper(paramTextView);
  }
  
  protected static TintInfo createTintInfo(Context paramContext, AppCompatDrawableManager paramAppCompatDrawableManager, int paramInt) {
    ColorStateList colorStateList = paramAppCompatDrawableManager.getTintList(paramContext, paramInt);
    if (colorStateList != null) {
      TintInfo tintInfo = new TintInfo();
      tintInfo.mHasTintList = true;
      tintInfo.mTintList = colorStateList;
      return tintInfo;
    } 
    return null;
  }
  
  final void applyCompoundDrawableTint(Drawable paramDrawable, TintInfo paramTintInfo) {
    if (paramDrawable != null && paramTintInfo != null)
      AppCompatDrawableManager.tintDrawable(paramDrawable, paramTintInfo, this.mView.getDrawableState()); 
  }
  
  void applyCompoundDrawablesTints() {
    if (this.mDrawableLeftTint != null || this.mDrawableTopTint != null || this.mDrawableRightTint != null || this.mDrawableBottomTint != null) {
      Drawable[] arrayOfDrawable = this.mView.getCompoundDrawables();
      applyCompoundDrawableTint(arrayOfDrawable[0], this.mDrawableLeftTint);
      applyCompoundDrawableTint(arrayOfDrawable[1], this.mDrawableTopTint);
      applyCompoundDrawableTint(arrayOfDrawable[2], this.mDrawableRightTint);
      applyCompoundDrawableTint(arrayOfDrawable[3], this.mDrawableBottomTint);
    } 
  }
  
  void loadFromAttributes(AttributeSet paramAttributeSet, int paramInt) {
    ColorStateList colorStateList1;
    boolean bool1;
    AppCompatDrawableManager appCompatDrawableManager3;
    ColorStateList colorStateList3;
    AppCompatDrawableManager appCompatDrawableManager4 = null;
    ColorStateList colorStateList2 = null;
    Context context = this.mView.getContext();
    AppCompatDrawableManager appCompatDrawableManager2 = AppCompatDrawableManager.get();
    TintTypedArray tintTypedArray2 = TintTypedArray.obtainStyledAttributes(context, paramAttributeSet, R.styleable.AppCompatTextHelper, paramInt, 0);
    int i = tintTypedArray2.getResourceId(R.styleable.AppCompatTextHelper_android_textAppearance, -1);
    if (tintTypedArray2.hasValue(R.styleable.AppCompatTextHelper_android_drawableLeft))
      this.mDrawableLeftTint = createTintInfo(context, appCompatDrawableManager2, tintTypedArray2.getResourceId(R.styleable.AppCompatTextHelper_android_drawableLeft, 0)); 
    if (tintTypedArray2.hasValue(R.styleable.AppCompatTextHelper_android_drawableTop))
      this.mDrawableTopTint = createTintInfo(context, appCompatDrawableManager2, tintTypedArray2.getResourceId(R.styleable.AppCompatTextHelper_android_drawableTop, 0)); 
    if (tintTypedArray2.hasValue(R.styleable.AppCompatTextHelper_android_drawableRight))
      this.mDrawableRightTint = createTintInfo(context, appCompatDrawableManager2, tintTypedArray2.getResourceId(R.styleable.AppCompatTextHelper_android_drawableRight, 0)); 
    if (tintTypedArray2.hasValue(R.styleable.AppCompatTextHelper_android_drawableBottom))
      this.mDrawableBottomTint = createTintInfo(context, appCompatDrawableManager2, tintTypedArray2.getResourceId(R.styleable.AppCompatTextHelper_android_drawableBottom, 0)); 
    tintTypedArray2.recycle();
    boolean bool3 = this.mView.getTransformationMethod() instanceof android.text.method.PasswordTransformationMethod;
    if (i != -1) {
      tintTypedArray2 = TintTypedArray.obtainStyledAttributes(context, i, R.styleable.TextAppearance);
      if (!bool3 && tintTypedArray2.hasValue(R.styleable.TextAppearance_textAllCaps)) {
        bool1 = tintTypedArray2.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
        i = 1;
      } else {
        i = 0;
        bool1 = false;
      } 
      if (Build.VERSION.SDK_INT < 23) {
        if (tintTypedArray2.hasValue(R.styleable.TextAppearance_android_textColor)) {
          ColorStateList colorStateList = tintTypedArray2.getColorStateList(R.styleable.TextAppearance_android_textColor);
        } else {
          appCompatDrawableManager2 = null;
        } 
        appCompatDrawableManager4 = appCompatDrawableManager2;
        if (tintTypedArray2.hasValue(R.styleable.TextAppearance_android_textColorHint)) {
          colorStateList2 = tintTypedArray2.getColorStateList(R.styleable.TextAppearance_android_textColorHint);
          appCompatDrawableManager4 = appCompatDrawableManager2;
        } 
      } else {
        appCompatDrawableManager4 = null;
      } 
      tintTypedArray2.recycle();
      appCompatDrawableManager2 = appCompatDrawableManager4;
    } else {
      appCompatDrawableManager2 = null;
      i = 0;
      bool1 = false;
      appCompatDrawableManager3 = appCompatDrawableManager4;
    } 
    TintTypedArray tintTypedArray1 = TintTypedArray.obtainStyledAttributes(context, paramAttributeSet, R.styleable.TextAppearance, paramInt, 0);
    paramInt = i;
    boolean bool2 = bool1;
    if (!bool3) {
      paramInt = i;
      bool2 = bool1;
      if (tintTypedArray1.hasValue(R.styleable.TextAppearance_textAllCaps)) {
        bool2 = tintTypedArray1.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
        paramInt = 1;
      } 
    } 
    AppCompatDrawableManager appCompatDrawableManager1 = appCompatDrawableManager2;
    appCompatDrawableManager4 = appCompatDrawableManager3;
    if (Build.VERSION.SDK_INT < 23) {
      ColorStateList colorStateList;
      if (tintTypedArray1.hasValue(R.styleable.TextAppearance_android_textColor))
        colorStateList = tintTypedArray1.getColorStateList(R.styleable.TextAppearance_android_textColor); 
      colorStateList1 = colorStateList;
      appCompatDrawableManager4 = appCompatDrawableManager3;
      if (tintTypedArray1.hasValue(R.styleable.TextAppearance_android_textColorHint)) {
        colorStateList3 = tintTypedArray1.getColorStateList(R.styleable.TextAppearance_android_textColorHint);
        colorStateList1 = colorStateList;
      } 
    } 
    tintTypedArray1.recycle();
    if (colorStateList1 != null)
      this.mView.setTextColor(colorStateList1); 
    if (colorStateList3 != null)
      this.mView.setHintTextColor(colorStateList3); 
    if (!bool3 && paramInt != 0)
      setAllCaps(bool2); 
  }
  
  void onSetTextAppearance(Context paramContext, int paramInt) {
    TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(paramContext, paramInt, R.styleable.TextAppearance);
    if (tintTypedArray.hasValue(R.styleable.TextAppearance_textAllCaps))
      setAllCaps(tintTypedArray.getBoolean(R.styleable.TextAppearance_textAllCaps, false)); 
    if (Build.VERSION.SDK_INT < 23 && tintTypedArray.hasValue(R.styleable.TextAppearance_android_textColor)) {
      ColorStateList colorStateList = tintTypedArray.getColorStateList(R.styleable.TextAppearance_android_textColor);
      if (colorStateList != null)
        this.mView.setTextColor(colorStateList); 
    } 
    tintTypedArray.recycle();
  }
  
  void setAllCaps(boolean paramBoolean) {
    TransformationMethod transformationMethod;
    TextView textView = this.mView;
    if (paramBoolean) {
      transformationMethod = (TransformationMethod)new AllCapsTransformationMethod(this.mView.getContext());
    } else {
      transformationMethod = null;
    } 
    textView.setTransformationMethod(transformationMethod);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\AppCompatTextHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */