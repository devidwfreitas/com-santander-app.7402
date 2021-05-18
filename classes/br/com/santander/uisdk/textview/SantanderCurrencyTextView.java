package br.com.santander.uisdk.textview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import ang;
import anx;
import java.text.DecimalFormat;

public class SantanderCurrencyTextView extends SantanderTextView {
  public SantanderCurrencyTextView(Context paramContext) {
    super(paramContext);
    a(paramContext, null);
  }
  
  public SantanderCurrencyTextView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public SantanderCurrencyTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet) {}
  
  public ang a() {
    return null;
  }
  
  public void setText(CharSequence paramCharSequence, TextView.BufferType paramBufferType) {
    paramCharSequence = anx.a(paramCharSequence.toString());
    DecimalFormat decimalFormat = new DecimalFormat("#,00");
    try {
      String str = decimalFormat.format(Float.valueOf(Float.parseFloat((String)paramCharSequence)));
      paramCharSequence = str;
    } catch (Exception exception) {}
    if (anx.b((String)paramCharSequence))
      super.setText(paramCharSequence, paramBufferType); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santande\\uisdk\textview\SantanderCurrencyTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */