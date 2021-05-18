package android.support.v7.widget;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;

@TargetApi(17)
@RequiresApi(17)
class CardViewJellybeanMr1 extends CardViewGingerbread {
  public void initStatic() {
    RoundRectDrawableWithShadow.sRoundRectHelper = new CardViewJellybeanMr1$1(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\CardViewJellybeanMr1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */