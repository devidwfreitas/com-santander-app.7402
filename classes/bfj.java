import android.text.Editable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;

public class bfj extends SpannableStringBuilder {
  private int a = 33;
  
  public bfj() {
    super("");
  }
  
  public bfj(CharSequence paramCharSequence) {
    super(paramCharSequence);
  }
  
  public bfj(CharSequence paramCharSequence, Object paramObject) {
    super(paramCharSequence);
    a(paramObject, 0, paramCharSequence.length());
  }
  
  public bfj(CharSequence paramCharSequence, Object... paramVarArgs) {
    super(paramCharSequence);
    int j = paramVarArgs.length;
    for (int i = 0; i < j; i++)
      a(paramVarArgs[i], 0, length()); 
  }
  
  private void a(Object paramObject, int paramInt1, int paramInt2) {
    setSpan(paramObject, paramInt1, paramInt2, this.a);
  }
  
  public static SpannableString b(CharSequence paramCharSequence, Object paramObject) {
    SpannableString spannableString = new SpannableString(paramCharSequence);
    spannableString.setSpan(paramObject, 0, paramCharSequence.length(), 33);
    return spannableString;
  }
  
  public static SpannableString b(CharSequence paramCharSequence, Object... paramVarArgs) {
    SpannableString spannableString = new SpannableString(paramCharSequence);
    int j = paramVarArgs.length;
    for (int i = 0; i < j; i++)
      spannableString.setSpan(paramVarArgs[i], 0, paramCharSequence.length(), 33); 
    return spannableString;
  }
  
  public bfj a(CharSequence paramCharSequence) {
    super.append(paramCharSequence);
    return this;
  }
  
  public bfj a(CharSequence paramCharSequence, ImageSpan paramImageSpan) {
    paramCharSequence = "." + paramCharSequence;
    a(paramCharSequence);
    a(paramImageSpan, length() - paramCharSequence.length(), length() - paramCharSequence.length() + 1);
    return this;
  }
  
  public bfj a(CharSequence paramCharSequence, bfk parambfk) {
    int i = 0;
    while (i != -1) {
      int j = toString().indexOf(paramCharSequence.toString(), i);
      i = j;
      if (j != -1) {
        a(parambfk.a(), j, paramCharSequence.length() + j);
        i = j + paramCharSequence.length();
      } 
    } 
    return this;
  }
  
  public bfj a(CharSequence paramCharSequence, Object paramObject) {
    a(paramCharSequence);
    a(paramObject, length() - paramCharSequence.length(), length());
    return this;
  }
  
  public bfj a(CharSequence paramCharSequence, Object... paramVarArgs) {
    a(paramCharSequence);
    int j = paramVarArgs.length;
    for (int i = 0; i < j; i++)
      a(paramVarArgs[i], length() - paramCharSequence.length(), length()); 
    return this;
  }
  
  public void a(int paramInt) {
    this.a = paramInt;
  }
  
  @Deprecated
  public bfj b(CharSequence paramCharSequence) {
    a(paramCharSequence);
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bfj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */