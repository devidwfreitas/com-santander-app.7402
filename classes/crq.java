import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.images.ImageManager;

public final class crq implements Runnable {
  private final Uri b;
  
  private final ParcelFileDescriptor c;
  
  public crq(ImageManager paramImageManager, Uri paramUri, ParcelFileDescriptor paramParcelFileDescriptor) {
    this.b = paramUri;
    this.c = paramParcelFileDescriptor;
  }
  
  public void run() {
    // Byte code:
    //   0: ldc 'LoadBitmapFromDiskRunnable can't be executed in the main thread'
    //   2: invokestatic b : (Ljava/lang/String;)V
    //   5: iconst_0
    //   6: istore_1
    //   7: iconst_0
    //   8: istore_2
    //   9: aconst_null
    //   10: astore_3
    //   11: aconst_null
    //   12: astore #4
    //   14: aload_0
    //   15: getfield c : Landroid/os/ParcelFileDescriptor;
    //   18: ifnull -> 41
    //   21: aload_0
    //   22: getfield c : Landroid/os/ParcelFileDescriptor;
    //   25: invokevirtual getFileDescriptor : ()Ljava/io/FileDescriptor;
    //   28: invokestatic decodeFileDescriptor : (Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    //   31: astore_3
    //   32: iload_2
    //   33: istore_1
    //   34: aload_0
    //   35: getfield c : Landroid/os/ParcelFileDescriptor;
    //   38: invokevirtual close : ()V
    //   41: new java/util/concurrent/CountDownLatch
    //   44: dup
    //   45: iconst_1
    //   46: invokespecial <init> : (I)V
    //   49: astore #4
    //   51: aload_0
    //   52: getfield a : Lcom/google/android/gms/common/images/ImageManager;
    //   55: invokestatic g : (Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
    //   58: new crt
    //   61: dup
    //   62: aload_0
    //   63: getfield a : Lcom/google/android/gms/common/images/ImageManager;
    //   66: aload_0
    //   67: getfield b : Landroid/net/Uri;
    //   70: aload_3
    //   71: iload_1
    //   72: aload #4
    //   74: invokespecial <init> : (Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
    //   77: invokevirtual post : (Ljava/lang/Runnable;)Z
    //   80: pop
    //   81: aload #4
    //   83: invokevirtual await : ()V
    //   86: return
    //   87: astore_3
    //   88: aload_0
    //   89: getfield b : Landroid/net/Uri;
    //   92: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   95: astore #5
    //   97: ldc 'ImageManager'
    //   99: new java/lang/StringBuilder
    //   102: dup
    //   103: aload #5
    //   105: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   108: invokevirtual length : ()I
    //   111: bipush #34
    //   113: iadd
    //   114: invokespecial <init> : (I)V
    //   117: ldc 'OOM while loading bitmap for uri: '
    //   119: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: aload #5
    //   124: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: invokevirtual toString : ()Ljava/lang/String;
    //   130: aload_3
    //   131: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   134: pop
    //   135: iconst_1
    //   136: istore_1
    //   137: aload #4
    //   139: astore_3
    //   140: goto -> 34
    //   143: astore #4
    //   145: ldc 'ImageManager'
    //   147: ldc 'closed failed'
    //   149: aload #4
    //   151: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   154: pop
    //   155: goto -> 41
    //   158: astore_3
    //   159: aload_0
    //   160: getfield b : Landroid/net/Uri;
    //   163: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   166: astore_3
    //   167: ldc 'ImageManager'
    //   169: new java/lang/StringBuilder
    //   172: dup
    //   173: aload_3
    //   174: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   177: invokevirtual length : ()I
    //   180: bipush #32
    //   182: iadd
    //   183: invokespecial <init> : (I)V
    //   186: ldc 'Latch interrupted while posting '
    //   188: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: aload_3
    //   192: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: invokevirtual toString : ()Ljava/lang/String;
    //   198: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   201: pop
    //   202: return
    // Exception table:
    //   from	to	target	type
    //   21	32	87	java/lang/OutOfMemoryError
    //   34	41	143	java/io/IOException
    //   81	86	158	java/lang/InterruptedException
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\crq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */