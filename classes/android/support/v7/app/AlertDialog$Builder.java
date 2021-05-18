package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.support.annotation.ArrayRes;
import android.support.annotation.AttrRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;

public class AlertDialog$Builder {
  private final AlertController$AlertParams P;
  
  private final int mTheme;
  
  public AlertDialog$Builder(@NonNull Context paramContext) {
    this(paramContext, AlertDialog.resolveDialogTheme(paramContext, 0));
  }
  
  public AlertDialog$Builder(@NonNull Context paramContext, @StyleRes int paramInt) {
    this.P = new AlertController$AlertParams((Context)new ContextThemeWrapper(paramContext, AlertDialog.resolveDialogTheme(paramContext, paramInt)));
    this.mTheme = paramInt;
  }
  
  public AlertDialog create() {
    AlertDialog alertDialog = new AlertDialog(this.P.mContext, this.mTheme);
    this.P.apply(alertDialog.mAlert);
    alertDialog.setCancelable(this.P.mCancelable);
    if (this.P.mCancelable)
      alertDialog.setCanceledOnTouchOutside(true); 
    alertDialog.setOnCancelListener(this.P.mOnCancelListener);
    alertDialog.setOnDismissListener(this.P.mOnDismissListener);
    if (this.P.mOnKeyListener != null)
      alertDialog.setOnKeyListener(this.P.mOnKeyListener); 
    return alertDialog;
  }
  
  @NonNull
  public Context getContext() {
    return this.P.mContext;
  }
  
  public AlertDialog$Builder setAdapter(ListAdapter paramListAdapter, DialogInterface.OnClickListener paramOnClickListener) {
    this.P.mAdapter = paramListAdapter;
    this.P.mOnClickListener = paramOnClickListener;
    return this;
  }
  
  public AlertDialog$Builder setCancelable(boolean paramBoolean) {
    this.P.mCancelable = paramBoolean;
    return this;
  }
  
  public AlertDialog$Builder setCursor(Cursor paramCursor, DialogInterface.OnClickListener paramOnClickListener, String paramString) {
    this.P.mCursor = paramCursor;
    this.P.mLabelColumn = paramString;
    this.P.mOnClickListener = paramOnClickListener;
    return this;
  }
  
  public AlertDialog$Builder setCustomTitle(@Nullable View paramView) {
    this.P.mCustomTitleView = paramView;
    return this;
  }
  
  public AlertDialog$Builder setIcon(@DrawableRes int paramInt) {
    this.P.mIconId = paramInt;
    return this;
  }
  
  public AlertDialog$Builder setIcon(@Nullable Drawable paramDrawable) {
    this.P.mIcon = paramDrawable;
    return this;
  }
  
  public AlertDialog$Builder setIconAttribute(@AttrRes int paramInt) {
    TypedValue typedValue = new TypedValue();
    this.P.mContext.getTheme().resolveAttribute(paramInt, typedValue, true);
    this.P.mIconId = typedValue.resourceId;
    return this;
  }
  
  @Deprecated
  public AlertDialog$Builder setInverseBackgroundForced(boolean paramBoolean) {
    this.P.mForceInverseBackground = paramBoolean;
    return this;
  }
  
  public AlertDialog$Builder setItems(@ArrayRes int paramInt, DialogInterface.OnClickListener paramOnClickListener) {
    this.P.mItems = this.P.mContext.getResources().getTextArray(paramInt);
    this.P.mOnClickListener = paramOnClickListener;
    return this;
  }
  
  public AlertDialog$Builder setItems(CharSequence[] paramArrayOfCharSequence, DialogInterface.OnClickListener paramOnClickListener) {
    this.P.mItems = paramArrayOfCharSequence;
    this.P.mOnClickListener = paramOnClickListener;
    return this;
  }
  
  public AlertDialog$Builder setMessage(@StringRes int paramInt) {
    this.P.mMessage = this.P.mContext.getText(paramInt);
    return this;
  }
  
  public AlertDialog$Builder setMessage(@Nullable CharSequence paramCharSequence) {
    this.P.mMessage = paramCharSequence;
    return this;
  }
  
  public AlertDialog$Builder setMultiChoiceItems(@ArrayRes int paramInt, boolean[] paramArrayOfboolean, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener) {
    this.P.mItems = this.P.mContext.getResources().getTextArray(paramInt);
    this.P.mOnCheckboxClickListener = paramOnMultiChoiceClickListener;
    this.P.mCheckedItems = paramArrayOfboolean;
    this.P.mIsMultiChoice = true;
    return this;
  }
  
  public AlertDialog$Builder setMultiChoiceItems(Cursor paramCursor, String paramString1, String paramString2, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener) {
    this.P.mCursor = paramCursor;
    this.P.mOnCheckboxClickListener = paramOnMultiChoiceClickListener;
    this.P.mIsCheckedColumn = paramString1;
    this.P.mLabelColumn = paramString2;
    this.P.mIsMultiChoice = true;
    return this;
  }
  
  public AlertDialog$Builder setMultiChoiceItems(CharSequence[] paramArrayOfCharSequence, boolean[] paramArrayOfboolean, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener) {
    this.P.mItems = paramArrayOfCharSequence;
    this.P.mOnCheckboxClickListener = paramOnMultiChoiceClickListener;
    this.P.mCheckedItems = paramArrayOfboolean;
    this.P.mIsMultiChoice = true;
    return this;
  }
  
  public AlertDialog$Builder setNegativeButton(@StringRes int paramInt, DialogInterface.OnClickListener paramOnClickListener) {
    this.P.mNegativeButtonText = this.P.mContext.getText(paramInt);
    this.P.mNegativeButtonListener = paramOnClickListener;
    return this;
  }
  
  public AlertDialog$Builder setNegativeButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener) {
    this.P.mNegativeButtonText = paramCharSequence;
    this.P.mNegativeButtonListener = paramOnClickListener;
    return this;
  }
  
  public AlertDialog$Builder setNeutralButton(@StringRes int paramInt, DialogInterface.OnClickListener paramOnClickListener) {
    this.P.mNeutralButtonText = this.P.mContext.getText(paramInt);
    this.P.mNeutralButtonListener = paramOnClickListener;
    return this;
  }
  
  public AlertDialog$Builder setNeutralButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener) {
    this.P.mNeutralButtonText = paramCharSequence;
    this.P.mNeutralButtonListener = paramOnClickListener;
    return this;
  }
  
  public AlertDialog$Builder setOnCancelListener(DialogInterface.OnCancelListener paramOnCancelListener) {
    this.P.mOnCancelListener = paramOnCancelListener;
    return this;
  }
  
  public AlertDialog$Builder setOnDismissListener(DialogInterface.OnDismissListener paramOnDismissListener) {
    this.P.mOnDismissListener = paramOnDismissListener;
    return this;
  }
  
  public AlertDialog$Builder setOnItemSelectedListener(AdapterView.OnItemSelectedListener paramOnItemSelectedListener) {
    this.P.mOnItemSelectedListener = paramOnItemSelectedListener;
    return this;
  }
  
  public AlertDialog$Builder setOnKeyListener(DialogInterface.OnKeyListener paramOnKeyListener) {
    this.P.mOnKeyListener = paramOnKeyListener;
    return this;
  }
  
  public AlertDialog$Builder setPositiveButton(@StringRes int paramInt, DialogInterface.OnClickListener paramOnClickListener) {
    this.P.mPositiveButtonText = this.P.mContext.getText(paramInt);
    this.P.mPositiveButtonListener = paramOnClickListener;
    return this;
  }
  
  public AlertDialog$Builder setPositiveButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener) {
    this.P.mPositiveButtonText = paramCharSequence;
    this.P.mPositiveButtonListener = paramOnClickListener;
    return this;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public AlertDialog$Builder setRecycleOnMeasureEnabled(boolean paramBoolean) {
    this.P.mRecycleOnMeasure = paramBoolean;
    return this;
  }
  
  public AlertDialog$Builder setSingleChoiceItems(@ArrayRes int paramInt1, int paramInt2, DialogInterface.OnClickListener paramOnClickListener) {
    this.P.mItems = this.P.mContext.getResources().getTextArray(paramInt1);
    this.P.mOnClickListener = paramOnClickListener;
    this.P.mCheckedItem = paramInt2;
    this.P.mIsSingleChoice = true;
    return this;
  }
  
  public AlertDialog$Builder setSingleChoiceItems(Cursor paramCursor, int paramInt, String paramString, DialogInterface.OnClickListener paramOnClickListener) {
    this.P.mCursor = paramCursor;
    this.P.mOnClickListener = paramOnClickListener;
    this.P.mCheckedItem = paramInt;
    this.P.mLabelColumn = paramString;
    this.P.mIsSingleChoice = true;
    return this;
  }
  
  public AlertDialog$Builder setSingleChoiceItems(ListAdapter paramListAdapter, int paramInt, DialogInterface.OnClickListener paramOnClickListener) {
    this.P.mAdapter = paramListAdapter;
    this.P.mOnClickListener = paramOnClickListener;
    this.P.mCheckedItem = paramInt;
    this.P.mIsSingleChoice = true;
    return this;
  }
  
  public AlertDialog$Builder setSingleChoiceItems(CharSequence[] paramArrayOfCharSequence, int paramInt, DialogInterface.OnClickListener paramOnClickListener) {
    this.P.mItems = paramArrayOfCharSequence;
    this.P.mOnClickListener = paramOnClickListener;
    this.P.mCheckedItem = paramInt;
    this.P.mIsSingleChoice = true;
    return this;
  }
  
  public AlertDialog$Builder setTitle(@StringRes int paramInt) {
    this.P.mTitle = this.P.mContext.getText(paramInt);
    return this;
  }
  
  public AlertDialog$Builder setTitle(@Nullable CharSequence paramCharSequence) {
    this.P.mTitle = paramCharSequence;
    return this;
  }
  
  public AlertDialog$Builder setView(int paramInt) {
    this.P.mView = null;
    this.P.mViewLayoutResId = paramInt;
    this.P.mViewSpacingSpecified = false;
    return this;
  }
  
  public AlertDialog$Builder setView(View paramView) {
    this.P.mView = paramView;
    this.P.mViewLayoutResId = 0;
    this.P.mViewSpacingSpecified = false;
    return this;
  }
  
  @Deprecated
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public AlertDialog$Builder setView(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.P.mView = paramView;
    this.P.mViewLayoutResId = 0;
    this.P.mViewSpacingSpecified = true;
    this.P.mViewSpacingLeft = paramInt1;
    this.P.mViewSpacingTop = paramInt2;
    this.P.mViewSpacingRight = paramInt3;
    this.P.mViewSpacingBottom = paramInt4;
    return this;
  }
  
  public AlertDialog show() {
    AlertDialog alertDialog = create();
    alertDialog.show();
    return alertDialog;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AlertDialog$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */