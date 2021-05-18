package android.support.v4.print;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.PrintManager;
import android.support.annotation.RequiresApi;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;

@TargetApi(19)
@RequiresApi(19)
class PrintHelperKitkat {
  public static final int COLOR_MODE_COLOR = 2;
  
  public static final int COLOR_MODE_MONOCHROME = 1;
  
  private static final String LOG_TAG = "PrintHelperKitkat";
  
  private static final int MAX_PRINT_SIZE = 3500;
  
  public static final int ORIENTATION_LANDSCAPE = 1;
  
  public static final int ORIENTATION_PORTRAIT = 2;
  
  public static final int SCALE_MODE_FILL = 2;
  
  public static final int SCALE_MODE_FIT = 1;
  
  int mColorMode = 2;
  
  final Context mContext;
  
  BitmapFactory.Options mDecodeOptions = null;
  
  protected boolean mIsMinMarginsHandlingCorrect = true;
  
  private final Object mLock = new Object();
  
  int mOrientation;
  
  protected boolean mPrintActivityRespectsOrientation = true;
  
  int mScaleMode = 2;
  
  PrintHelperKitkat(Context paramContext) {
    this.mContext = paramContext;
  }
  
  private Bitmap convertBitmapForColorMode(Bitmap paramBitmap, int paramInt) {
    if (paramInt != 1)
      return paramBitmap; 
    Bitmap bitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
    Canvas canvas = new Canvas(bitmap);
    Paint paint = new Paint();
    ColorMatrix colorMatrix = new ColorMatrix();
    colorMatrix.setSaturation(0.0F);
    paint.setColorFilter((ColorFilter)new ColorMatrixColorFilter(colorMatrix));
    canvas.drawBitmap(paramBitmap, 0.0F, 0.0F, paint);
    canvas.setBitmap(null);
    return bitmap;
  }
  
  private Matrix getMatrix(int paramInt1, int paramInt2, RectF paramRectF, int paramInt3) {
    Matrix matrix = new Matrix();
    float f = paramRectF.width() / paramInt1;
    if (paramInt3 == 2) {
      f = Math.max(f, paramRectF.height() / paramInt2);
      matrix.postScale(f, f);
      matrix.postTranslate((paramRectF.width() - paramInt1 * f) / 2.0F, (paramRectF.height() - f * paramInt2) / 2.0F);
      return matrix;
    } 
    f = Math.min(f, paramRectF.height() / paramInt2);
    matrix.postScale(f, f);
    matrix.postTranslate((paramRectF.width() - paramInt1 * f) / 2.0F, (paramRectF.height() - f * paramInt2) / 2.0F);
    return matrix;
  }
  
  private static boolean isPortrait(Bitmap paramBitmap) {
    return (paramBitmap.getWidth() <= paramBitmap.getHeight());
  }
  
  private Bitmap loadBitmap(Uri paramUri, BitmapFactory.Options paramOptions) {
    InputStream inputStream = null;
    if (paramUri == null || this.mContext == null)
      throw new IllegalArgumentException("bad argument to loadBitmap"); 
    try {
      InputStream inputStream1 = this.mContext.getContentResolver().openInputStream(paramUri);
      inputStream = inputStream1;
      Bitmap bitmap = BitmapFactory.decodeStream(inputStream1, null, paramOptions);
      return bitmap;
    } finally {
      if (inputStream != null)
        try {
          inputStream.close();
        } catch (IOException iOException) {
          Log.w("PrintHelperKitkat", "close fail ", iOException);
        }  
    } 
  }
  
  private Bitmap loadConstrainedBitmap(Uri paramUri, int paramInt) {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: iload_2
    //   3: ifle -> 17
    //   6: aload_1
    //   7: ifnull -> 17
    //   10: aload_0
    //   11: getfield mContext : Landroid/content/Context;
    //   14: ifnonnull -> 27
    //   17: new java/lang/IllegalArgumentException
    //   20: dup
    //   21: ldc 'bad argument to getScaledBitmap'
    //   23: invokespecial <init> : (Ljava/lang/String;)V
    //   26: athrow
    //   27: new android/graphics/BitmapFactory$Options
    //   30: dup
    //   31: invokespecial <init> : ()V
    //   34: astore #7
    //   36: aload #7
    //   38: iconst_1
    //   39: putfield inJustDecodeBounds : Z
    //   42: aload_0
    //   43: aload_1
    //   44: aload #7
    //   46: invokespecial loadBitmap : (Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   49: pop
    //   50: aload #7
    //   52: getfield outWidth : I
    //   55: istore #5
    //   57: aload #7
    //   59: getfield outHeight : I
    //   62: istore #6
    //   64: iload #5
    //   66: ifle -> 74
    //   69: iload #6
    //   71: ifgt -> 76
    //   74: aconst_null
    //   75: areturn
    //   76: iload #5
    //   78: iload #6
    //   80: invokestatic max : (II)I
    //   83: istore #4
    //   85: iload #4
    //   87: iload_2
    //   88: if_icmple -> 104
    //   91: iload #4
    //   93: iconst_1
    //   94: iushr
    //   95: istore #4
    //   97: iload_3
    //   98: iconst_1
    //   99: ishl
    //   100: istore_3
    //   101: goto -> 85
    //   104: iload_3
    //   105: ifle -> 74
    //   108: iload #5
    //   110: iload #6
    //   112: invokestatic min : (II)I
    //   115: iload_3
    //   116: idiv
    //   117: ifle -> 74
    //   120: aload_0
    //   121: getfield mLock : Ljava/lang/Object;
    //   124: astore #7
    //   126: aload #7
    //   128: monitorenter
    //   129: aload_0
    //   130: new android/graphics/BitmapFactory$Options
    //   133: dup
    //   134: invokespecial <init> : ()V
    //   137: putfield mDecodeOptions : Landroid/graphics/BitmapFactory$Options;
    //   140: aload_0
    //   141: getfield mDecodeOptions : Landroid/graphics/BitmapFactory$Options;
    //   144: iconst_1
    //   145: putfield inMutable : Z
    //   148: aload_0
    //   149: getfield mDecodeOptions : Landroid/graphics/BitmapFactory$Options;
    //   152: iload_3
    //   153: putfield inSampleSize : I
    //   156: aload_0
    //   157: getfield mDecodeOptions : Landroid/graphics/BitmapFactory$Options;
    //   160: astore #8
    //   162: aload #7
    //   164: monitorexit
    //   165: aload_0
    //   166: aload_1
    //   167: aload #8
    //   169: invokespecial loadBitmap : (Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   172: astore #7
    //   174: aload_0
    //   175: getfield mLock : Ljava/lang/Object;
    //   178: astore_1
    //   179: aload_1
    //   180: monitorenter
    //   181: aload_0
    //   182: aconst_null
    //   183: putfield mDecodeOptions : Landroid/graphics/BitmapFactory$Options;
    //   186: aload_1
    //   187: monitorexit
    //   188: aload #7
    //   190: areturn
    //   191: astore #7
    //   193: aload_1
    //   194: monitorexit
    //   195: aload #7
    //   197: athrow
    //   198: astore_1
    //   199: aload #7
    //   201: monitorexit
    //   202: aload_1
    //   203: athrow
    //   204: astore #7
    //   206: aload_0
    //   207: getfield mLock : Ljava/lang/Object;
    //   210: astore_1
    //   211: aload_1
    //   212: monitorenter
    //   213: aload_0
    //   214: aconst_null
    //   215: putfield mDecodeOptions : Landroid/graphics/BitmapFactory$Options;
    //   218: aload_1
    //   219: monitorexit
    //   220: aload #7
    //   222: athrow
    //   223: astore #7
    //   225: aload_1
    //   226: monitorexit
    //   227: aload #7
    //   229: athrow
    // Exception table:
    //   from	to	target	type
    //   129	165	198	finally
    //   165	174	204	finally
    //   181	188	191	finally
    //   193	195	191	finally
    //   199	202	198	finally
    //   213	220	223	finally
    //   225	227	223	finally
  }
  
  private void writeBitmap(PrintAttributes paramPrintAttributes, int paramInt, Bitmap paramBitmap, ParcelFileDescriptor paramParcelFileDescriptor, CancellationSignal paramCancellationSignal, PrintDocumentAdapter.WriteResultCallback paramWriteResultCallback) {
    PrintAttributes printAttributes;
    if (this.mIsMinMarginsHandlingCorrect) {
      printAttributes = paramPrintAttributes;
    } else {
      printAttributes = copyAttributes(paramPrintAttributes).setMinMargins(new PrintAttributes.Margins(0, 0, 0, 0)).build();
    } 
    (new PrintHelperKitkat$2(this, paramCancellationSignal, printAttributes, paramBitmap, paramPrintAttributes, paramInt, paramParcelFileDescriptor, paramWriteResultCallback)).execute((Object[])new Void[0]);
  }
  
  protected PrintAttributes.Builder copyAttributes(PrintAttributes paramPrintAttributes) {
    PrintAttributes.Builder builder = (new PrintAttributes.Builder()).setMediaSize(paramPrintAttributes.getMediaSize()).setResolution(paramPrintAttributes.getResolution()).setMinMargins(paramPrintAttributes.getMinMargins());
    if (paramPrintAttributes.getColorMode() != 0)
      builder.setColorMode(paramPrintAttributes.getColorMode()); 
    return builder;
  }
  
  public int getColorMode() {
    return this.mColorMode;
  }
  
  public int getOrientation() {
    return (this.mOrientation == 0) ? 1 : this.mOrientation;
  }
  
  public int getScaleMode() {
    return this.mScaleMode;
  }
  
  public void printBitmap(String paramString, Bitmap paramBitmap, PrintHelperKitkat$OnPrintFinishCallback paramPrintHelperKitkat$OnPrintFinishCallback) {
    PrintAttributes.MediaSize mediaSize;
    if (paramBitmap == null)
      return; 
    int i = this.mScaleMode;
    PrintManager printManager = (PrintManager)this.mContext.getSystemService("print");
    if (isPortrait(paramBitmap)) {
      mediaSize = PrintAttributes.MediaSize.UNKNOWN_PORTRAIT;
    } else {
      mediaSize = PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE;
    } 
    PrintAttributes printAttributes = (new PrintAttributes.Builder()).setMediaSize(mediaSize).setColorMode(this.mColorMode).build();
    printManager.print(paramString, new PrintHelperKitkat$1(this, paramString, i, paramBitmap, paramPrintHelperKitkat$OnPrintFinishCallback), printAttributes);
  }
  
  public void printBitmap(String paramString, Uri paramUri, PrintHelperKitkat$OnPrintFinishCallback paramPrintHelperKitkat$OnPrintFinishCallback) {
    PrintHelperKitkat$3 printHelperKitkat$3 = new PrintHelperKitkat$3(this, paramString, paramUri, paramPrintHelperKitkat$OnPrintFinishCallback, this.mScaleMode);
    PrintManager printManager = (PrintManager)this.mContext.getSystemService("print");
    PrintAttributes.Builder builder = new PrintAttributes.Builder();
    builder.setColorMode(this.mColorMode);
    if (this.mOrientation == 1 || this.mOrientation == 0) {
      builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE);
    } else if (this.mOrientation == 2) {
      builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_PORTRAIT);
    } 
    printManager.print(paramString, printHelperKitkat$3, builder.build());
  }
  
  public void setColorMode(int paramInt) {
    this.mColorMode = paramInt;
  }
  
  public void setOrientation(int paramInt) {
    this.mOrientation = paramInt;
  }
  
  public void setScaleMode(int paramInt) {
    this.mScaleMode = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\print\PrintHelperKitkat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */