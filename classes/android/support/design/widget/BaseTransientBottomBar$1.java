package android.support.design.widget;

import android.os.Handler;
import android.os.Message;

final class BaseTransientBottomBar$1 implements Handler.Callback {
  public boolean handleMessage(Message paramMessage) {
    switch (paramMessage.what) {
      default:
        return false;
      case 0:
        ((BaseTransientBottomBar)paramMessage.obj).showView();
        return true;
      case 1:
        break;
    } 
    ((BaseTransientBottomBar)paramMessage.obj).hideView(paramMessage.arg1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\BaseTransientBottomBar$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */