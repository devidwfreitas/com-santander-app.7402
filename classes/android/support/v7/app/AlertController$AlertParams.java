package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.SimpleCursorAdapter;

public class AlertController$AlertParams {
  public ListAdapter mAdapter;
  
  public boolean mCancelable;
  
  public int mCheckedItem = -1;
  
  public boolean[] mCheckedItems;
  
  public final Context mContext;
  
  public Cursor mCursor;
  
  public View mCustomTitleView;
  
  public boolean mForceInverseBackground;
  
  public Drawable mIcon;
  
  public int mIconAttrId = 0;
  
  public int mIconId = 0;
  
  public final LayoutInflater mInflater;
  
  public String mIsCheckedColumn;
  
  public boolean mIsMultiChoice;
  
  public boolean mIsSingleChoice;
  
  public CharSequence[] mItems;
  
  public String mLabelColumn;
  
  public CharSequence mMessage;
  
  public DialogInterface.OnClickListener mNegativeButtonListener;
  
  public CharSequence mNegativeButtonText;
  
  public DialogInterface.OnClickListener mNeutralButtonListener;
  
  public CharSequence mNeutralButtonText;
  
  public DialogInterface.OnCancelListener mOnCancelListener;
  
  public DialogInterface.OnMultiChoiceClickListener mOnCheckboxClickListener;
  
  public DialogInterface.OnClickListener mOnClickListener;
  
  public DialogInterface.OnDismissListener mOnDismissListener;
  
  public AdapterView.OnItemSelectedListener mOnItemSelectedListener;
  
  public DialogInterface.OnKeyListener mOnKeyListener;
  
  public AlertController$AlertParams$OnPrepareListViewListener mOnPrepareListViewListener;
  
  public DialogInterface.OnClickListener mPositiveButtonListener;
  
  public CharSequence mPositiveButtonText;
  
  public boolean mRecycleOnMeasure = true;
  
  public CharSequence mTitle;
  
  public View mView;
  
  public int mViewLayoutResId;
  
  public int mViewSpacingBottom;
  
  public int mViewSpacingLeft;
  
  public int mViewSpacingRight;
  
  public boolean mViewSpacingSpecified = false;
  
  public int mViewSpacingTop;
  
  public AlertController$AlertParams(Context paramContext) {
    this.mContext = paramContext;
    this.mCancelable = true;
    this.mInflater = (LayoutInflater)paramContext.getSystemService("layout_inflater");
  }
  
  private void createListView(AlertController paramAlertController) {
    AlertController$CheckedItemAdapter alertController$CheckedItemAdapter;
    AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView)this.mInflater.inflate(paramAlertController.mListLayout, null);
    if (this.mIsMultiChoice) {
      if (this.mCursor == null) {
        AlertController$AlertParams$1 alertController$AlertParams$1 = new AlertController$AlertParams$1(this, this.mContext, paramAlertController.mMultiChoiceItemLayout, 16908308, this.mItems, alertController$RecycleListView);
      } else {
        AlertController$AlertParams$2 alertController$AlertParams$2 = new AlertController$AlertParams$2(this, this.mContext, this.mCursor, false, alertController$RecycleListView, paramAlertController);
      } 
    } else {
      int i;
      if (this.mIsSingleChoice) {
        i = paramAlertController.mSingleChoiceItemLayout;
      } else {
        i = paramAlertController.mListItemLayout;
      } 
      if (this.mCursor != null) {
        SimpleCursorAdapter simpleCursorAdapter = new SimpleCursorAdapter(this.mContext, i, this.mCursor, new String[] { this.mLabelColumn }, new int[] { 16908308 });
      } else if (this.mAdapter != null) {
        ListAdapter listAdapter = this.mAdapter;
      } else {
        alertController$CheckedItemAdapter = new AlertController$CheckedItemAdapter(this.mContext, i, 16908308, this.mItems);
      } 
    } 
    if (this.mOnPrepareListViewListener != null)
      this.mOnPrepareListViewListener.onPrepareListView(alertController$RecycleListView); 
    paramAlertController.mAdapter = (ListAdapter)alertController$CheckedItemAdapter;
    paramAlertController.mCheckedItem = this.mCheckedItem;
    if (this.mOnClickListener != null) {
      alertController$RecycleListView.setOnItemClickListener(new AlertController$AlertParams$3(this, paramAlertController));
    } else if (this.mOnCheckboxClickListener != null) {
      alertController$RecycleListView.setOnItemClickListener(new AlertController$AlertParams$4(this, alertController$RecycleListView, paramAlertController));
    } 
    if (this.mOnItemSelectedListener != null)
      alertController$RecycleListView.setOnItemSelectedListener(this.mOnItemSelectedListener); 
    if (this.mIsSingleChoice) {
      alertController$RecycleListView.setChoiceMode(1);
    } else if (this.mIsMultiChoice) {
      alertController$RecycleListView.setChoiceMode(2);
    } 
    paramAlertController.mListView = alertController$RecycleListView;
  }
  
  public void apply(AlertController paramAlertController) {
    if (this.mCustomTitleView != null) {
      paramAlertController.setCustomTitle(this.mCustomTitleView);
    } else {
      if (this.mTitle != null)
        paramAlertController.setTitle(this.mTitle); 
      if (this.mIcon != null)
        paramAlertController.setIcon(this.mIcon); 
      if (this.mIconId != 0)
        paramAlertController.setIcon(this.mIconId); 
      if (this.mIconAttrId != 0)
        paramAlertController.setIcon(paramAlertController.getIconAttributeResId(this.mIconAttrId)); 
    } 
    if (this.mMessage != null)
      paramAlertController.setMessage(this.mMessage); 
    if (this.mPositiveButtonText != null)
      paramAlertController.setButton(-1, this.mPositiveButtonText, this.mPositiveButtonListener, null); 
    if (this.mNegativeButtonText != null)
      paramAlertController.setButton(-2, this.mNegativeButtonText, this.mNegativeButtonListener, null); 
    if (this.mNeutralButtonText != null)
      paramAlertController.setButton(-3, this.mNeutralButtonText, this.mNeutralButtonListener, null); 
    if (this.mItems != null || this.mCursor != null || this.mAdapter != null)
      createListView(paramAlertController); 
    if (this.mView != null) {
      if (this.mViewSpacingSpecified) {
        paramAlertController.setView(this.mView, this.mViewSpacingLeft, this.mViewSpacingTop, this.mViewSpacingRight, this.mViewSpacingBottom);
        return;
      } 
      paramAlertController.setView(this.mView);
      return;
    } 
    if (this.mViewLayoutResId != 0) {
      paramAlertController.setView(this.mViewLayoutResId);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AlertController$AlertParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */