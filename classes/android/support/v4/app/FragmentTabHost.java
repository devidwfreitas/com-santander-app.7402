package android.support.v4.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import java.util.ArrayList;

public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {
  private boolean mAttached;
  
  private int mContainerId;
  
  private Context mContext;
  
  private FragmentManager mFragmentManager;
  
  private FragmentTabHost$TabInfo mLastTab;
  
  private TabHost.OnTabChangeListener mOnTabChangeListener;
  
  private FrameLayout mRealTabContent;
  
  private final ArrayList<FragmentTabHost$TabInfo> mTabs = new ArrayList<FragmentTabHost$TabInfo>();
  
  public FragmentTabHost(Context paramContext) {
    super(paramContext, null);
    initFragmentTabHost(paramContext, (AttributeSet)null);
  }
  
  public FragmentTabHost(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    initFragmentTabHost(paramContext, paramAttributeSet);
  }
  
  @Nullable
  private FragmentTransaction doTabChanged(@Nullable String paramString, @Nullable FragmentTransaction paramFragmentTransaction) {
    FragmentTabHost$TabInfo fragmentTabHost$TabInfo = getTabInfoForTag(paramString);
    FragmentTransaction fragmentTransaction = paramFragmentTransaction;
    if (this.mLastTab != fragmentTabHost$TabInfo) {
      fragmentTransaction = paramFragmentTransaction;
      if (paramFragmentTransaction == null)
        fragmentTransaction = this.mFragmentManager.beginTransaction(); 
      if (this.mLastTab != null && this.mLastTab.fragment != null)
        fragmentTransaction.detach(this.mLastTab.fragment); 
      if (fragmentTabHost$TabInfo != null)
        if (fragmentTabHost$TabInfo.fragment == null) {
          fragmentTabHost$TabInfo.fragment = Fragment.instantiate(this.mContext, fragmentTabHost$TabInfo.clss.getName(), fragmentTabHost$TabInfo.args);
          fragmentTransaction.add(this.mContainerId, fragmentTabHost$TabInfo.fragment, fragmentTabHost$TabInfo.tag);
        } else {
          fragmentTransaction.attach(fragmentTabHost$TabInfo.fragment);
        }  
      this.mLastTab = fragmentTabHost$TabInfo;
    } 
    return fragmentTransaction;
  }
  
  private void ensureContent() {
    if (this.mRealTabContent == null) {
      this.mRealTabContent = (FrameLayout)findViewById(this.mContainerId);
      if (this.mRealTabContent == null)
        throw new IllegalStateException("No tab content FrameLayout found for id " + this.mContainerId); 
    } 
  }
  
  private void ensureHierarchy(Context paramContext) {
    if (findViewById(16908307) == null) {
      LinearLayout linearLayout = new LinearLayout(paramContext);
      linearLayout.setOrientation(1);
      addView((View)linearLayout, (ViewGroup.LayoutParams)new FrameLayout.LayoutParams(-1, -1));
      TabWidget tabWidget = new TabWidget(paramContext);
      tabWidget.setId(16908307);
      tabWidget.setOrientation(0);
      linearLayout.addView((View)tabWidget, (ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2, 0.0F));
      FrameLayout frameLayout2 = new FrameLayout(paramContext);
      frameLayout2.setId(16908305);
      linearLayout.addView((View)frameLayout2, (ViewGroup.LayoutParams)new LinearLayout.LayoutParams(0, 0, 0.0F));
      FrameLayout frameLayout1 = new FrameLayout(paramContext);
      this.mRealTabContent = frameLayout1;
      this.mRealTabContent.setId(this.mContainerId);
      linearLayout.addView((View)frameLayout1, (ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, 0, 1.0F));
    } 
  }
  
  @Nullable
  private FragmentTabHost$TabInfo getTabInfoForTag(String paramString) {
    int j = this.mTabs.size();
    for (int i = 0; i < j; i++) {
      FragmentTabHost$TabInfo fragmentTabHost$TabInfo = this.mTabs.get(i);
      if (fragmentTabHost$TabInfo.tag.equals(paramString))
        return fragmentTabHost$TabInfo; 
    } 
    return null;
  }
  
  private void initFragmentTabHost(Context paramContext, AttributeSet paramAttributeSet) {
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16842995 }, 0, 0);
    this.mContainerId = typedArray.getResourceId(0, 0);
    typedArray.recycle();
    super.setOnTabChangedListener(this);
  }
  
  public void addTab(@NonNull TabHost.TabSpec paramTabSpec, @NonNull Class<?> paramClass, @Nullable Bundle paramBundle) {
    paramTabSpec.setContent(new FragmentTabHost$DummyTabFactory(this.mContext));
    String str = paramTabSpec.getTag();
    FragmentTabHost$TabInfo fragmentTabHost$TabInfo = new FragmentTabHost$TabInfo(str, paramClass, paramBundle);
    if (this.mAttached) {
      fragmentTabHost$TabInfo.fragment = this.mFragmentManager.findFragmentByTag(str);
      if (fragmentTabHost$TabInfo.fragment != null && !fragmentTabHost$TabInfo.fragment.isDetached()) {
        FragmentTransaction fragmentTransaction = this.mFragmentManager.beginTransaction();
        fragmentTransaction.detach(fragmentTabHost$TabInfo.fragment);
        fragmentTransaction.commit();
      } 
    } 
    this.mTabs.add(fragmentTabHost$TabInfo);
    addTab(paramTabSpec);
  }
  
  protected void onAttachedToWindow() {
    super.onAttachedToWindow();
    String str = getCurrentTabTag();
    FragmentTransaction fragmentTransaction = null;
    int j = this.mTabs.size();
    int i = 0;
    while (i < j) {
      FragmentTabHost$TabInfo fragmentTabHost$TabInfo = this.mTabs.get(i);
      fragmentTabHost$TabInfo.fragment = this.mFragmentManager.findFragmentByTag(fragmentTabHost$TabInfo.tag);
      FragmentTransaction fragmentTransaction1 = fragmentTransaction;
      if (fragmentTabHost$TabInfo.fragment != null) {
        fragmentTransaction1 = fragmentTransaction;
        if (!fragmentTabHost$TabInfo.fragment.isDetached())
          if (fragmentTabHost$TabInfo.tag.equals(str)) {
            this.mLastTab = fragmentTabHost$TabInfo;
            fragmentTransaction1 = fragmentTransaction;
          } else {
            fragmentTransaction1 = fragmentTransaction;
            if (fragmentTransaction == null)
              fragmentTransaction1 = this.mFragmentManager.beginTransaction(); 
            fragmentTransaction1.detach(fragmentTabHost$TabInfo.fragment);
          }  
      } 
      i++;
      fragmentTransaction = fragmentTransaction1;
    } 
    this.mAttached = true;
    fragmentTransaction = doTabChanged(str, fragmentTransaction);
    if (fragmentTransaction != null) {
      fragmentTransaction.commit();
      this.mFragmentManager.executePendingTransactions();
    } 
  }
  
  protected void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    this.mAttached = false;
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable) {
    if (!(paramParcelable instanceof FragmentTabHost$SavedState)) {
      super.onRestoreInstanceState(paramParcelable);
      return;
    } 
    FragmentTabHost$SavedState fragmentTabHost$SavedState = (FragmentTabHost$SavedState)paramParcelable;
    super.onRestoreInstanceState(fragmentTabHost$SavedState.getSuperState());
    setCurrentTabByTag(fragmentTabHost$SavedState.curTab);
  }
  
  protected Parcelable onSaveInstanceState() {
    FragmentTabHost$SavedState fragmentTabHost$SavedState = new FragmentTabHost$SavedState(super.onSaveInstanceState());
    fragmentTabHost$SavedState.curTab = getCurrentTabTag();
    return (Parcelable)fragmentTabHost$SavedState;
  }
  
  public void onTabChanged(String paramString) {
    if (this.mAttached) {
      FragmentTransaction fragmentTransaction = doTabChanged(paramString, (FragmentTransaction)null);
      if (fragmentTransaction != null)
        fragmentTransaction.commit(); 
    } 
    if (this.mOnTabChangeListener != null)
      this.mOnTabChangeListener.onTabChanged(paramString); 
  }
  
  public void setOnTabChangedListener(TabHost.OnTabChangeListener paramOnTabChangeListener) {
    this.mOnTabChangeListener = paramOnTabChangeListener;
  }
  
  @Deprecated
  public void setup() {
    throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
  }
  
  public void setup(Context paramContext, FragmentManager paramFragmentManager) {
    ensureHierarchy(paramContext);
    super.setup();
    this.mContext = paramContext;
    this.mFragmentManager = paramFragmentManager;
    ensureContent();
  }
  
  public void setup(Context paramContext, FragmentManager paramFragmentManager, int paramInt) {
    ensureHierarchy(paramContext);
    super.setup();
    this.mContext = paramContext;
    this.mFragmentManager = paramFragmentManager;
    this.mContainerId = paramInt;
    ensureContent();
    this.mRealTabContent.setId(paramInt);
    if (getId() == -1)
      setId(16908306); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentTabHost.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */