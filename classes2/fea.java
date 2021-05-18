import android.hardware.Camera;

class fea implements Camera.AutoFocusCallback {
  fea(fdy paramfdy) {}
  
  public void onAutoFocus(boolean paramBoolean, Camera paramCamera) {
    fdy.d(this.a).post(new feb(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fea.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */