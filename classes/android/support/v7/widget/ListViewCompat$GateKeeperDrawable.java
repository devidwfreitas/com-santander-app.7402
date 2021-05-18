package android.support.v7.widget;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.v7.graphics.drawable.DrawableWrapper;

class ListViewCompat$GateKeeperDrawable extends DrawableWrapper {
  private boolean mEnabled = true;
  
  public ListViewCompat$GateKeeperDrawable(Drawable paramDrawable) {
    super(paramDrawable);
  }
  
  public void draw(Canvas paramCanvas) {
    if (this.mEnabled)
      super.draw(paramCanvas); 
  }
  
  void setEnabled(boolean paramBoolean) {
    this.mEnabled = paramBoolean;
  }
  
  public void setHotspot(float paramFloat1, float paramFloat2) {
    if (this.mEnabled)
      super.setHotspot(paramFloat1, paramFloat2); 
  }
  
  public void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (this.mEnabled)
      super.setHotspotBounds(paramInt1, paramInt2, paramInt3, paramInt4); 
  }
  
  public boolean setState(int[] paramArrayOfint) {
    return this.mEnabled ? super.setState(paramArrayOfint) : false;
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2) {
    return this.mEnabled ? super.setVisible(paramBoolean1, paramBoolean2) : false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ListViewCompat$GateKeeperDrawable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */