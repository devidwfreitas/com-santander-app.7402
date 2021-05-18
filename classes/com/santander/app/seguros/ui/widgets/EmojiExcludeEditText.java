package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.EditText;
import mbp;

public class EmojiExcludeEditText extends EditText {
  public static final int a = 210;
  
  private mbp b = new mbp(this, null);
  
  public EmojiExcludeEditText(Context paramContext) {
    super(paramContext);
    a();
  }
  
  public EmojiExcludeEditText(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public EmojiExcludeEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a() {
    try {
      if (this.b != null)
        setFilters(new InputFilter[] { (InputFilter)this.b, (InputFilter)new InputFilter.LengthFilter(210) }); 
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  public void setFilters(InputFilter[] paramArrayOfInputFilter) {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_1
    //   3: astore #5
    //   5: aload_1
    //   6: arraylength
    //   7: ifeq -> 66
    //   10: aload_1
    //   11: arraylength
    //   12: istore #4
    //   14: iconst_0
    //   15: istore_2
    //   16: iload_2
    //   17: iload #4
    //   19: if_icmpge -> 86
    //   22: aload_1
    //   23: iload_2
    //   24: aaload
    //   25: aload_0
    //   26: getfield b : Lmbp;
    //   29: if_acmpne -> 73
    //   32: iload_3
    //   33: istore_2
    //   34: aload_1
    //   35: astore #5
    //   37: iload_2
    //   38: ifeq -> 66
    //   41: aload_1
    //   42: aload_1
    //   43: arraylength
    //   44: iconst_1
    //   45: iadd
    //   46: invokestatic copyOf : ([Ljava/lang/Object;I)[Ljava/lang/Object;
    //   49: checkcast [Landroid/text/InputFilter;
    //   52: astore #5
    //   54: aload #5
    //   56: aload #5
    //   58: arraylength
    //   59: iconst_1
    //   60: isub
    //   61: aload_0
    //   62: getfield b : Lmbp;
    //   65: aastore
    //   66: aload_0
    //   67: aload #5
    //   69: invokespecial setFilters : ([Landroid/text/InputFilter;)V
    //   72: return
    //   73: iload_2
    //   74: iconst_1
    //   75: iadd
    //   76: istore_2
    //   77: goto -> 16
    //   80: astore_1
    //   81: aload_1
    //   82: invokevirtual printStackTrace : ()V
    //   85: return
    //   86: iconst_1
    //   87: istore_2
    //   88: goto -> 34
    // Exception table:
    //   from	to	target	type
    //   5	14	80	java/lang/Exception
    //   22	32	80	java/lang/Exception
    //   41	66	80	java/lang/Exception
    //   66	72	80	java/lang/Exception
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\EmojiExcludeEditText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */