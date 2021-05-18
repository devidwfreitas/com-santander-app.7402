package android.support.v4.graphics;

import android.graphics.Bitmap;

class BitmapCompat$BaseBitmapImpl implements BitmapCompat$BitmapImpl {
  public int getAllocationByteCount(Bitmap paramBitmap) {
    return paramBitmap.getRowBytes() * paramBitmap.getHeight();
  }
  
  public boolean hasMipMap(Bitmap paramBitmap) {
    return false;
  }
  
  public void setHasMipMap(Bitmap paramBitmap, boolean paramBoolean) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\graphics\BitmapCompat$BaseBitmapImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */