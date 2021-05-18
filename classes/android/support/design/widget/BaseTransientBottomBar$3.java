package android.support.design.widget;

class BaseTransientBottomBar$3 implements SnackbarManager$Callback {
  public void dismiss(int paramInt) {
    BaseTransientBottomBar.sHandler.sendMessage(BaseTransientBottomBar.sHandler.obtainMessage(1, paramInt, 0, BaseTransientBottomBar.this));
  }
  
  public void show() {
    BaseTransientBottomBar.sHandler.sendMessage(BaseTransientBottomBar.sHandler.obtainMessage(0, BaseTransientBottomBar.this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\BaseTransientBottomBar$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */