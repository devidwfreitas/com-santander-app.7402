import android.view.MotionEvent;
import android.view.View;

class mdd extends mel<Item> {
  mdd(mda parammda) {}
  
  public boolean a(View paramView, MotionEvent paramMotionEvent, int paramInt, mda<Item> parammda, Item paramItem) {
    if (mda.h(parammda) != null) {
      mdm mdm = parammda.d(paramInt);
      if (mdm != null)
        return mda.h(parammda).a(paramView, paramMotionEvent, mdm, paramItem, paramInt); 
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mdd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */