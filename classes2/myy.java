import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import java.text.NumberFormat;

public class myy implements TextWatcher {
  private final EditText a;
  
  private boolean b = false;
  
  private NumberFormat c = NumberFormat.getCurrencyInstance();
  
  public myy(EditText paramEditText) {
    this.a = paramEditText;
  }
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_0
    //   3: getfield b : Z
    //   6: ifeq -> 15
    //   9: aload_0
    //   10: iconst_0
    //   11: putfield b : Z
    //   14: return
    //   15: aload_0
    //   16: iconst_1
    //   17: putfield b : Z
    //   20: aload_1
    //   21: invokeinterface toString : ()Ljava/lang/String;
    //   26: astore #5
    //   28: aload #5
    //   30: ldc 'R$'
    //   32: invokevirtual indexOf : (Ljava/lang/String;)I
    //   35: iconst_m1
    //   36: if_icmpgt -> 50
    //   39: aload #5
    //   41: ldc '$'
    //   43: invokevirtual indexOf : (Ljava/lang/String;)I
    //   46: iconst_m1
    //   47: if_icmple -> 153
    //   50: iload_3
    //   51: istore_2
    //   52: aload #5
    //   54: ldc '.'
    //   56: invokevirtual indexOf : (Ljava/lang/String;)I
    //   59: iconst_m1
    //   60: if_icmpgt -> 76
    //   63: aload #5
    //   65: ldc ','
    //   67: invokevirtual indexOf : (Ljava/lang/String;)I
    //   70: iconst_m1
    //   71: if_icmple -> 153
    //   74: iload_3
    //   75: istore_2
    //   76: aload #5
    //   78: astore_1
    //   79: iload_2
    //   80: ifeq -> 107
    //   83: aload #5
    //   85: ldc '[R$]'
    //   87: ldc ''
    //   89: invokevirtual replaceAll : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   92: ldc '[,]'
    //   94: ldc ''
    //   96: invokevirtual replaceAll : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   99: ldc '[.]'
    //   101: ldc ''
    //   103: invokevirtual replaceAll : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   106: astore_1
    //   107: aload_0
    //   108: getfield c : Ljava/text/NumberFormat;
    //   111: aload_1
    //   112: invokestatic parseDouble : (Ljava/lang/String;)D
    //   115: ldc2_w 100.0
    //   118: ddiv
    //   119: invokevirtual format : (D)Ljava/lang/String;
    //   122: astore_1
    //   123: aload_0
    //   124: getfield a : Landroid/widget/EditText;
    //   127: aload_1
    //   128: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   131: aload_0
    //   132: getfield a : Landroid/widget/EditText;
    //   135: aload_0
    //   136: getfield a : Landroid/widget/EditText;
    //   139: invokevirtual getText : ()Landroid/text/Editable;
    //   142: invokeinterface length : ()I
    //   147: invokevirtual setSelection : (I)V
    //   150: return
    //   151: astore_1
    //   152: return
    //   153: iconst_0
    //   154: istore_2
    //   155: goto -> 76
    // Exception table:
    //   from	to	target	type
    //   107	150	151	java/lang/NumberFormatException
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\myy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */