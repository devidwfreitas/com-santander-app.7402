package com.santander.app.seguros.ui.widgets.sb;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.SeekBar;
import mfp;
import mfq;
import mga;

public class SeekBar extends SeekBar implements mga {
  private mfq a;
  
  public SeekBar(Context paramContext) {
    super(paramContext);
    a(null, 0);
  }
  
  public SeekBar(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet, 0);
  }
  
  public SeekBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet, paramInt);
  }
  
  private void a(AttributeSet paramAttributeSet, int paramInt) {
    if (!isInEditMode())
      this.a = (mfq)new mfp(this, paramAttributeSet, paramInt); 
  }
  
  public mfq a() {
    return this.a;
  }
  
  public void setOnSeekBarChangeListener(SeekBar.OnSeekBarChangeListener paramOnSeekBarChangeListener) {
    super.setOnSeekBarChangeListener(this.a.a(paramOnSeekBarChangeListener));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\sb\SeekBar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */