package br.com.santander.uisdk.textview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import ang;
import anx;

public class SantanderCpfTextView extends SantanderTextView {
  public SantanderCpfTextView(Context paramContext) {
    super(paramContext);
    a(paramContext, null);
  }
  
  public SantanderCpfTextView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public SantanderCpfTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet) {}
  
  public ang a() {
    return null;
  }
  
  public void setText(CharSequence paramCharSequence, TextView.BufferType paramBufferType) {
    paramCharSequence = anx.a(paramCharSequence.toString());
    if (anx.b((String)paramCharSequence))
      super.setText(anx.a((String)paramCharSequence, "###.###.###-##"), paramBufferType); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santande\\uisdk\textview\SantanderCpfTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */