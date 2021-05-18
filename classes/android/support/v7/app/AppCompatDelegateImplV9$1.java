package android.support.v7.app;

class AppCompatDelegateImplV9$1 implements Runnable {
  public void run() {
    if ((AppCompatDelegateImplV9.this.mInvalidatePanelMenuFeatures & 0x1) != 0)
      AppCompatDelegateImplV9.this.doInvalidatePanelMenu(0); 
    if ((AppCompatDelegateImplV9.this.mInvalidatePanelMenuFeatures & 0x1000) != 0)
      AppCompatDelegateImplV9.this.doInvalidatePanelMenu(108); 
    AppCompatDelegateImplV9.this.mInvalidatePanelMenuPosted = false;
    AppCompatDelegateImplV9.this.mInvalidatePanelMenuFeatures = 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV9$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */