package android.support.v4.app;

import java.util.ArrayList;

class FragmentManagerImpl$PopBackStackState implements FragmentManagerImpl$OpGenerator {
  final int mFlags;
  
  final int mId;
  
  final String mName;
  
  FragmentManagerImpl$PopBackStackState(String paramString, int paramInt1, int paramInt2) {
    this.mName = paramString;
    this.mId = paramInt1;
    this.mFlags = paramInt2;
  }
  
  public boolean generateOps(ArrayList<BackStackRecord> paramArrayList, ArrayList<Boolean> paramArrayList1) {
    return FragmentManagerImpl.this.popBackStackState(paramArrayList, paramArrayList1, this.mName, this.mId, this.mFlags);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentManagerImpl$PopBackStackState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */