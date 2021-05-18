import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.support.annotation.ColorInt;

final class aba extends ColorDrawable {
  private final Paint a = new Paint(1);
  
  private final int b;
  
  private final int c;
  
  private Path d;
  
  aba(@ColorInt int paramInt1, int paramInt2) {
    this.c = abl.a(paramInt2);
    this.b = 0;
    this.a.setColor(paramInt1);
  }
  
  private void a(Rect paramRect) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: new android/graphics/Path
    //   6: dup
    //   7: invokespecial <init> : ()V
    //   10: putfield d : Landroid/graphics/Path;
    //   13: aload_0
    //   14: getfield c : I
    //   17: lookupswitch default -> 307, 48 -> 140, 80 -> 254, 8388611 -> 70, 8388613 -> 201
    //   60: aload_0
    //   61: getfield d : Landroid/graphics/Path;
    //   64: invokevirtual close : ()V
    //   67: aload_0
    //   68: monitorexit
    //   69: return
    //   70: aload_0
    //   71: getfield d : Landroid/graphics/Path;
    //   74: aload_1
    //   75: invokevirtual width : ()I
    //   78: i2f
    //   79: aload_1
    //   80: invokevirtual height : ()I
    //   83: i2f
    //   84: invokevirtual moveTo : (FF)V
    //   87: aload_0
    //   88: getfield d : Landroid/graphics/Path;
    //   91: fconst_0
    //   92: aload_1
    //   93: invokevirtual height : ()I
    //   96: iconst_2
    //   97: idiv
    //   98: i2f
    //   99: invokevirtual lineTo : (FF)V
    //   102: aload_0
    //   103: getfield d : Landroid/graphics/Path;
    //   106: aload_1
    //   107: invokevirtual width : ()I
    //   110: i2f
    //   111: fconst_0
    //   112: invokevirtual lineTo : (FF)V
    //   115: aload_0
    //   116: getfield d : Landroid/graphics/Path;
    //   119: aload_1
    //   120: invokevirtual width : ()I
    //   123: i2f
    //   124: aload_1
    //   125: invokevirtual height : ()I
    //   128: i2f
    //   129: invokevirtual lineTo : (FF)V
    //   132: goto -> 60
    //   135: astore_1
    //   136: aload_0
    //   137: monitorexit
    //   138: aload_1
    //   139: athrow
    //   140: aload_0
    //   141: getfield d : Landroid/graphics/Path;
    //   144: fconst_0
    //   145: aload_1
    //   146: invokevirtual height : ()I
    //   149: i2f
    //   150: invokevirtual moveTo : (FF)V
    //   153: aload_0
    //   154: getfield d : Landroid/graphics/Path;
    //   157: aload_1
    //   158: invokevirtual width : ()I
    //   161: iconst_2
    //   162: idiv
    //   163: i2f
    //   164: fconst_0
    //   165: invokevirtual lineTo : (FF)V
    //   168: aload_0
    //   169: getfield d : Landroid/graphics/Path;
    //   172: aload_1
    //   173: invokevirtual width : ()I
    //   176: i2f
    //   177: aload_1
    //   178: invokevirtual height : ()I
    //   181: i2f
    //   182: invokevirtual lineTo : (FF)V
    //   185: aload_0
    //   186: getfield d : Landroid/graphics/Path;
    //   189: fconst_0
    //   190: aload_1
    //   191: invokevirtual height : ()I
    //   194: i2f
    //   195: invokevirtual lineTo : (FF)V
    //   198: goto -> 60
    //   201: aload_0
    //   202: getfield d : Landroid/graphics/Path;
    //   205: fconst_0
    //   206: fconst_0
    //   207: invokevirtual moveTo : (FF)V
    //   210: aload_0
    //   211: getfield d : Landroid/graphics/Path;
    //   214: aload_1
    //   215: invokevirtual width : ()I
    //   218: i2f
    //   219: aload_1
    //   220: invokevirtual height : ()I
    //   223: iconst_2
    //   224: idiv
    //   225: i2f
    //   226: invokevirtual lineTo : (FF)V
    //   229: aload_0
    //   230: getfield d : Landroid/graphics/Path;
    //   233: fconst_0
    //   234: aload_1
    //   235: invokevirtual height : ()I
    //   238: i2f
    //   239: invokevirtual lineTo : (FF)V
    //   242: aload_0
    //   243: getfield d : Landroid/graphics/Path;
    //   246: fconst_0
    //   247: fconst_0
    //   248: invokevirtual lineTo : (FF)V
    //   251: goto -> 60
    //   254: aload_0
    //   255: getfield d : Landroid/graphics/Path;
    //   258: fconst_0
    //   259: fconst_0
    //   260: invokevirtual moveTo : (FF)V
    //   263: aload_0
    //   264: getfield d : Landroid/graphics/Path;
    //   267: aload_1
    //   268: invokevirtual width : ()I
    //   271: iconst_2
    //   272: idiv
    //   273: i2f
    //   274: aload_1
    //   275: invokevirtual height : ()I
    //   278: i2f
    //   279: invokevirtual lineTo : (FF)V
    //   282: aload_0
    //   283: getfield d : Landroid/graphics/Path;
    //   286: aload_1
    //   287: invokevirtual width : ()I
    //   290: i2f
    //   291: fconst_0
    //   292: invokevirtual lineTo : (FF)V
    //   295: aload_0
    //   296: getfield d : Landroid/graphics/Path;
    //   299: fconst_0
    //   300: fconst_0
    //   301: invokevirtual lineTo : (FF)V
    //   304: goto -> 60
    //   307: goto -> 60
    // Exception table:
    //   from	to	target	type
    //   2	60	135	finally
    //   60	67	135	finally
    //   70	132	135	finally
    //   140	198	135	finally
    //   201	251	135	finally
    //   254	304	135	finally
  }
  
  public void draw(Canvas paramCanvas) {
    paramCanvas.drawColor(this.b);
    if (this.d == null)
      a(getBounds()); 
    paramCanvas.drawPath(this.d, this.a);
  }
  
  public int getOpacity() {
    if (this.a.getColorFilter() != null)
      return -3; 
    switch (this.a.getColor() >>> 24) {
      default:
        return -3;
      case 0:
        return -2;
      case 255:
        break;
    } 
    return -1;
  }
  
  protected void onBoundsChange(Rect paramRect) {
    super.onBoundsChange(paramRect);
    a(paramRect);
  }
  
  public void setAlpha(int paramInt) {
    this.a.setAlpha(paramInt);
  }
  
  public void setColor(@ColorInt int paramInt) {
    this.a.setColor(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter) {
    this.a.setColorFilter(paramColorFilter);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aba.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */