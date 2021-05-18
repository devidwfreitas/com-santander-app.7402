package br.com.santander.modulo.ddav1.components;

import aet;
import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v7.widget.AppCompatTextView;
import android.util.AttributeSet;

public class CurrencyFormattedTextView extends AppCompatTextView {
  public CurrencyFormattedTextView(Context paramContext) {
    super(paramContext);
  }
  
  public CurrencyFormattedTextView(Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public CurrencyFormattedTextView(Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void setTextAndFormat(CharSequence paramCharSequence) {
    Double double_ = Double.valueOf(Double.parseDouble(paramCharSequence.toString().replace(".", "").replace(",", ".")));
    if (double_.doubleValue() < 1000.0D) {
      setText(paramCharSequence);
      setTextSize(18.0F);
      return;
    } 
    if (double_.doubleValue() < 10000.0D) {
      setText(paramCharSequence);
      setTextSize(16.0F);
      return;
    } 
    if (double_.doubleValue() < 100000.0D) {
      setText(paramCharSequence);
      setTextSize(14.0F);
      return;
    } 
    if (double_.doubleValue() < 1000000.0D) {
      setText(paramCharSequence);
      setTextSize(12.0F);
      return;
    } 
    double d = double_.doubleValue() / 1000000.0D;
    setText(aet.a(Double.valueOf(d)) + "M");
    setTextSize(18.0F);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\modulo\ddav1\components\CurrencyFormattedTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */