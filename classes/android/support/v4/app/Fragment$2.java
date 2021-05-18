package android.support.v4.app;

import android.support.annotation.Nullable;
import android.view.View;

class Fragment$2 extends FragmentContainer {
  @Nullable
  public View onFindViewById(int paramInt) {
    if (Fragment.this.mView == null)
      throw new IllegalStateException("Fragment does not have a view"); 
    return Fragment.this.mView.findViewById(paramInt);
  }
  
  public boolean onHasView() {
    return (Fragment.this.mView != null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\Fragment$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */