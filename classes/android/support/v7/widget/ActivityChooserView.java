package android.support.v7.widget;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ActionProvider;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ActivityChooserView extends ViewGroup implements ActivityChooserModel$ActivityChooserModelClient {
  private static final String LOG_TAG = "ActivityChooserView";
  
  private final LinearLayoutCompat mActivityChooserContent;
  
  private final Drawable mActivityChooserContentBackground;
  
  final ActivityChooserView$ActivityChooserViewAdapter mAdapter;
  
  private final ActivityChooserView$Callbacks mCallbacks;
  
  private int mDefaultActionButtonContentDescription;
  
  final FrameLayout mDefaultActivityButton;
  
  private final ImageView mDefaultActivityButtonImage;
  
  final FrameLayout mExpandActivityOverflowButton;
  
  private final ImageView mExpandActivityOverflowButtonImage;
  
  int mInitialActivityCount = 4;
  
  private boolean mIsAttachedToWindow;
  
  boolean mIsSelectingDefaultActivity;
  
  private final int mListPopupMaxWidth;
  
  private ListPopupWindow mListPopupWindow;
  
  final DataSetObserver mModelDataSetObserver = new ActivityChooserView$1(this);
  
  PopupWindow.OnDismissListener mOnDismissListener;
  
  private final ViewTreeObserver.OnGlobalLayoutListener mOnGlobalLayoutListener = new ActivityChooserView$2(this);
  
  ActionProvider mProvider;
  
  public ActivityChooserView(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public ActivityChooserView(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ActivityChooserView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ActivityChooserView, paramInt, 0);
    this.mInitialActivityCount = typedArray.getInt(R.styleable.ActivityChooserView_initialActivityCount, 4);
    Drawable drawable = typedArray.getDrawable(R.styleable.ActivityChooserView_expandActivityOverflowButtonDrawable);
    typedArray.recycle();
    LayoutInflater.from(getContext()).inflate(R.layout.abc_activity_chooser_view, this, true);
    this.mCallbacks = new ActivityChooserView$Callbacks(this);
    this.mActivityChooserContent = (LinearLayoutCompat)findViewById(R.id.activity_chooser_view_content);
    this.mActivityChooserContentBackground = this.mActivityChooserContent.getBackground();
    this.mDefaultActivityButton = (FrameLayout)findViewById(R.id.default_activity_button);
    this.mDefaultActivityButton.setOnClickListener(this.mCallbacks);
    this.mDefaultActivityButton.setOnLongClickListener(this.mCallbacks);
    this.mDefaultActivityButtonImage = (ImageView)this.mDefaultActivityButton.findViewById(R.id.image);
    FrameLayout frameLayout = (FrameLayout)findViewById(R.id.expand_activities_button);
    frameLayout.setOnClickListener(this.mCallbacks);
    frameLayout.setOnTouchListener(new ActivityChooserView$3(this, (View)frameLayout));
    this.mExpandActivityOverflowButton = frameLayout;
    this.mExpandActivityOverflowButtonImage = (ImageView)frameLayout.findViewById(R.id.image);
    this.mExpandActivityOverflowButtonImage.setImageDrawable(drawable);
    this.mAdapter = new ActivityChooserView$ActivityChooserViewAdapter(this);
    this.mAdapter.registerDataSetObserver(new ActivityChooserView$4(this));
    Resources resources = paramContext.getResources();
    this.mListPopupMaxWidth = Math.max((resources.getDisplayMetrics()).widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
  }
  
  public boolean dismissPopup() {
    if (isShowingPopup()) {
      getListPopupWindow().dismiss();
      ViewTreeObserver viewTreeObserver = getViewTreeObserver();
      if (viewTreeObserver.isAlive())
        viewTreeObserver.removeGlobalOnLayoutListener(this.mOnGlobalLayoutListener); 
    } 
    return true;
  }
  
  public ActivityChooserModel getDataModel() {
    return this.mAdapter.getDataModel();
  }
  
  ListPopupWindow getListPopupWindow() {
    if (this.mListPopupWindow == null) {
      this.mListPopupWindow = new ListPopupWindow(getContext());
      this.mListPopupWindow.setAdapter((ListAdapter)this.mAdapter);
      this.mListPopupWindow.setAnchorView((View)this);
      this.mListPopupWindow.setModal(true);
      this.mListPopupWindow.setOnItemClickListener(this.mCallbacks);
      this.mListPopupWindow.setOnDismissListener(this.mCallbacks);
    } 
    return this.mListPopupWindow;
  }
  
  public boolean isShowingPopup() {
    return getListPopupWindow().isShowing();
  }
  
  protected void onAttachedToWindow() {
    super.onAttachedToWindow();
    ActivityChooserModel activityChooserModel = this.mAdapter.getDataModel();
    if (activityChooserModel != null)
      activityChooserModel.registerObserver(this.mModelDataSetObserver); 
    this.mIsAttachedToWindow = true;
  }
  
  protected void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    ActivityChooserModel activityChooserModel = this.mAdapter.getDataModel();
    if (activityChooserModel != null)
      activityChooserModel.unregisterObserver(this.mModelDataSetObserver); 
    ViewTreeObserver viewTreeObserver = getViewTreeObserver();
    if (viewTreeObserver.isAlive())
      viewTreeObserver.removeGlobalOnLayoutListener(this.mOnGlobalLayoutListener); 
    if (isShowingPopup())
      dismissPopup(); 
    this.mIsAttachedToWindow = false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.mActivityChooserContent.layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
    if (!isShowingPopup())
      dismissPopup(); 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    LinearLayoutCompat linearLayoutCompat = this.mActivityChooserContent;
    int i = paramInt2;
    if (this.mDefaultActivityButton.getVisibility() != 0)
      i = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt2), 1073741824); 
    measureChild((View)linearLayoutCompat, paramInt1, i);
    setMeasuredDimension(linearLayoutCompat.getMeasuredWidth(), linearLayoutCompat.getMeasuredHeight());
  }
  
  public void setActivityChooserModel(ActivityChooserModel paramActivityChooserModel) {
    this.mAdapter.setDataModel(paramActivityChooserModel);
    if (isShowingPopup()) {
      dismissPopup();
      showPopup();
    } 
  }
  
  public void setDefaultActionButtonContentDescription(int paramInt) {
    this.mDefaultActionButtonContentDescription = paramInt;
  }
  
  public void setExpandActivityOverflowButtonContentDescription(int paramInt) {
    String str = getContext().getString(paramInt);
    this.mExpandActivityOverflowButtonImage.setContentDescription(str);
  }
  
  public void setExpandActivityOverflowButtonDrawable(Drawable paramDrawable) {
    this.mExpandActivityOverflowButtonImage.setImageDrawable(paramDrawable);
  }
  
  public void setInitialActivityCount(int paramInt) {
    this.mInitialActivityCount = paramInt;
  }
  
  public void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener) {
    this.mOnDismissListener = paramOnDismissListener;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setProvider(ActionProvider paramActionProvider) {
    this.mProvider = paramActionProvider;
  }
  
  public boolean showPopup() {
    if (isShowingPopup() || !this.mIsAttachedToWindow)
      return false; 
    this.mIsSelectingDefaultActivity = false;
    showPopupUnchecked(this.mInitialActivityCount);
    return true;
  }
  
  void showPopupUnchecked(int paramInt) {
    byte b;
    boolean bool;
    if (this.mAdapter.getDataModel() == null)
      throw new IllegalStateException("No data model. Did you call #setDataModel?"); 
    getViewTreeObserver().addOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
    if (this.mDefaultActivityButton.getVisibility() == 0) {
      bool = true;
    } else {
      bool = false;
    } 
    int i = this.mAdapter.getActivityCount();
    if (bool) {
      b = 1;
    } else {
      b = 0;
    } 
    if (paramInt != Integer.MAX_VALUE && i > b + paramInt) {
      this.mAdapter.setShowFooterView(true);
      this.mAdapter.setMaxActivityCount(paramInt - 1);
    } else {
      this.mAdapter.setShowFooterView(false);
      this.mAdapter.setMaxActivityCount(paramInt);
    } 
    ListPopupWindow listPopupWindow = getListPopupWindow();
    if (!listPopupWindow.isShowing()) {
      if (this.mIsSelectingDefaultActivity || !bool) {
        this.mAdapter.setShowDefaultActivity(true, bool);
      } else {
        this.mAdapter.setShowDefaultActivity(false, false);
      } 
      listPopupWindow.setContentWidth(Math.min(this.mAdapter.measureContentWidth(), this.mListPopupMaxWidth));
      listPopupWindow.show();
      if (this.mProvider != null)
        this.mProvider.subUiVisibilityChanged(true); 
      listPopupWindow.getListView().setContentDescription(getContext().getString(R.string.abc_activitychooserview_choose_application));
    } 
  }
  
  void updateAppearance() {
    if (this.mAdapter.getCount() > 0) {
      this.mExpandActivityOverflowButton.setEnabled(true);
    } else {
      this.mExpandActivityOverflowButton.setEnabled(false);
    } 
    int i = this.mAdapter.getActivityCount();
    int j = this.mAdapter.getHistorySize();
    if (i == 1 || (i > 1 && j > 0)) {
      this.mDefaultActivityButton.setVisibility(0);
      ResolveInfo resolveInfo = this.mAdapter.getDefaultActivity();
      PackageManager packageManager = getContext().getPackageManager();
      this.mDefaultActivityButtonImage.setImageDrawable(resolveInfo.loadIcon(packageManager));
      if (this.mDefaultActionButtonContentDescription != 0) {
        CharSequence charSequence = resolveInfo.loadLabel(packageManager);
        charSequence = getContext().getString(this.mDefaultActionButtonContentDescription, new Object[] { charSequence });
        this.mDefaultActivityButton.setContentDescription(charSequence);
      } 
    } else {
      this.mDefaultActivityButton.setVisibility(8);
    } 
    if (this.mDefaultActivityButton.getVisibility() == 0) {
      this.mActivityChooserContent.setBackgroundDrawable(this.mActivityChooserContentBackground);
      return;
    } 
    this.mActivityChooserContent.setBackgroundDrawable(null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActivityChooserView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */