package android.support.v7.widget;

import java.util.ArrayList;

class DefaultItemAnimator$3 implements Runnable {
  public void run() {
    for (RecyclerView$ViewHolder recyclerView$ViewHolder : additions)
      DefaultItemAnimator.this.animateAddImpl(recyclerView$ViewHolder); 
    additions.clear();
    DefaultItemAnimator.this.mAdditionsList.remove(additions);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\DefaultItemAnimator$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */