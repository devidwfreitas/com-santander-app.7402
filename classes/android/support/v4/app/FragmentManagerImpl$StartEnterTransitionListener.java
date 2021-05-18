package android.support.v4.app;

class FragmentManagerImpl$StartEnterTransitionListener implements Fragment$OnStartEnterTransitionListener {
  private final boolean mIsBack;
  
  private int mNumPostponed;
  
  private final BackStackRecord mRecord;
  
  FragmentManagerImpl$StartEnterTransitionListener(BackStackRecord paramBackStackRecord, boolean paramBoolean) {
    this.mIsBack = paramBoolean;
    this.mRecord = paramBackStackRecord;
  }
  
  public void cancelTransaction() {
    FragmentManagerImpl.access$300(this.mRecord.mManager, this.mRecord, this.mIsBack, false, false);
  }
  
  public void completeTransaction() {
    boolean bool1;
    boolean bool2 = false;
    if (this.mNumPostponed > 0) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    FragmentManagerImpl fragmentManagerImpl = this.mRecord.mManager;
    int j = fragmentManagerImpl.mAdded.size();
    for (int i = 0; i < j; i++) {
      Fragment fragment = fragmentManagerImpl.mAdded.get(i);
      fragment.setOnStartEnterTransitionListener(null);
      if (bool1 && fragment.isPostponed())
        fragment.startPostponedEnterTransition(); 
    } 
    fragmentManagerImpl = this.mRecord.mManager;
    BackStackRecord backStackRecord = this.mRecord;
    boolean bool = this.mIsBack;
    if (!bool1)
      bool2 = true; 
    FragmentManagerImpl.access$300(fragmentManagerImpl, backStackRecord, bool, bool2, true);
  }
  
  public boolean isReady() {
    return (this.mNumPostponed == 0);
  }
  
  public void onStartEnterTransition() {
    this.mNumPostponed--;
    if (this.mNumPostponed != 0)
      return; 
    FragmentManagerImpl.access$200(this.mRecord.mManager);
  }
  
  public void startListening() {
    this.mNumPostponed++;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentManagerImpl$StartEnterTransitionListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */