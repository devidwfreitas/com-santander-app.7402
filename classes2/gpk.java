import android.app.DatePickerDialog;
import android.content.Context;
import android.widget.DatePicker;
import java.util.Calendar;
import java.util.Date;

public class gpk extends DatePickerDialog {
  public static final int a = 1;
  
  public static final int b = 2;
  
  public static final int c = 3;
  
  public static final int d = 4;
  
  public static final int e = 5;
  
  private int f;
  
  private int g;
  
  private int h;
  
  private int i;
  
  private final Calendar j;
  
  public gpk(Context paramContext, DatePickerDialog.OnDateSetListener paramOnDateSetListener, int paramInt1, int paramInt2, int paramInt3) {
    super(paramContext, paramOnDateSetListener, paramInt1, paramInt2, paramInt3);
    this.j = Calendar.getInstance();
    this.j.setTime(new Date());
    this.j.set(1, paramInt1);
    this.j.set(2, paramInt2);
    this.j.set(5, paramInt3);
    setTitle(nak.x(nak.a(this.j.getTime())));
  }
  
  public gpk(Context paramContext, DatePickerDialog.OnDateSetListener paramOnDateSetListener, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super(paramContext, paramOnDateSetListener, paramInt1, paramInt2, paramInt3);
    this.f = paramInt4;
    this.j = Calendar.getInstance();
    this.j.setTime(new Date());
    if (paramInt4 == 2) {
      this.j.add(6, 1);
    } else if (paramInt4 == 3 || paramInt4 == 4) {
      this.j.set(1, paramInt1);
      this.j.set(2, paramInt2);
      this.j.set(5, paramInt3);
    } 
    this.g = this.j.get(1);
    this.h = this.j.get(2);
    this.i = this.j.get(5);
    this.j.set(1, paramInt1);
    this.j.set(2, paramInt2);
    this.j.set(5, paramInt3);
    setTitle(nak.x(nak.a(this.j.getTime())));
  }
  
  public void onDateChanged(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #6
    //   3: aload_0
    //   4: getfield f : I
    //   7: iconst_1
    //   8: if_icmpne -> 163
    //   11: iload_2
    //   12: aload_0
    //   13: getfield g : I
    //   16: if_icmple -> 112
    //   19: iconst_0
    //   20: istore #5
    //   22: iconst_1
    //   23: istore #6
    //   25: iload #5
    //   27: ifne -> 35
    //   30: iload #6
    //   32: ifeq -> 59
    //   35: aload_0
    //   36: getfield g : I
    //   39: istore_2
    //   40: aload_0
    //   41: getfield h : I
    //   44: istore_3
    //   45: aload_0
    //   46: getfield i : I
    //   49: istore #4
    //   51: aload_1
    //   52: iload_2
    //   53: iload_3
    //   54: iload #4
    //   56: invokevirtual updateDate : (III)V
    //   59: aload_0
    //   60: getfield j : Ljava/util/Calendar;
    //   63: iconst_1
    //   64: iload_2
    //   65: invokevirtual set : (II)V
    //   68: aload_0
    //   69: getfield j : Ljava/util/Calendar;
    //   72: iconst_2
    //   73: iload_3
    //   74: invokevirtual set : (II)V
    //   77: aload_0
    //   78: getfield j : Ljava/util/Calendar;
    //   81: iconst_5
    //   82: iload #4
    //   84: invokevirtual set : (II)V
    //   87: aload_0
    //   88: new java/util/Date
    //   91: dup
    //   92: aload_0
    //   93: getfield j : Ljava/util/Calendar;
    //   96: invokevirtual getTimeInMillis : ()J
    //   99: invokespecial <init> : (J)V
    //   102: invokestatic a : (Ljava/util/Date;)Ljava/lang/String;
    //   105: invokestatic x : (Ljava/lang/String;)Ljava/lang/String;
    //   108: invokevirtual setTitle : (Ljava/lang/CharSequence;)V
    //   111: return
    //   112: iload_2
    //   113: aload_0
    //   114: getfield g : I
    //   117: if_icmpne -> 254
    //   120: iload_3
    //   121: aload_0
    //   122: getfield h : I
    //   125: if_icmple -> 137
    //   128: iconst_0
    //   129: istore #5
    //   131: iconst_1
    //   132: istore #6
    //   134: goto -> 25
    //   137: iload_3
    //   138: aload_0
    //   139: getfield h : I
    //   142: if_icmpne -> 254
    //   145: iload #4
    //   147: aload_0
    //   148: getfield i : I
    //   151: if_icmple -> 254
    //   154: iconst_0
    //   155: istore #5
    //   157: iconst_1
    //   158: istore #6
    //   160: goto -> 25
    //   163: aload_0
    //   164: getfield f : I
    //   167: iconst_2
    //   168: if_icmpeq -> 195
    //   171: aload_0
    //   172: getfield f : I
    //   175: iconst_3
    //   176: if_icmpeq -> 195
    //   179: aload_0
    //   180: getfield f : I
    //   183: iconst_4
    //   184: if_icmpeq -> 195
    //   187: aload_0
    //   188: getfield f : I
    //   191: iconst_5
    //   192: if_icmpne -> 254
    //   195: iload_2
    //   196: aload_0
    //   197: getfield g : I
    //   200: if_icmpge -> 209
    //   203: iconst_1
    //   204: istore #5
    //   206: goto -> 25
    //   209: iload_2
    //   210: aload_0
    //   211: getfield g : I
    //   214: if_icmpne -> 254
    //   217: iload_3
    //   218: aload_0
    //   219: getfield h : I
    //   222: if_icmpge -> 231
    //   225: iconst_1
    //   226: istore #5
    //   228: goto -> 25
    //   231: iload_3
    //   232: aload_0
    //   233: getfield h : I
    //   236: if_icmpne -> 254
    //   239: iload #4
    //   241: aload_0
    //   242: getfield i : I
    //   245: if_icmpge -> 254
    //   248: iconst_1
    //   249: istore #5
    //   251: goto -> 25
    //   254: iconst_0
    //   255: istore #5
    //   257: goto -> 25
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gpk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */