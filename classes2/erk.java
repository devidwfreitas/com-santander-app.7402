import android.app.Activity;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import android.util.Log;
import java.io.IOException;

public final class erk {
  private static final String a = erk.class.getSimpleName();
  
  private static final float b = 0.1F;
  
  private static final long c = 200L;
  
  private final Context d;
  
  private boolean e = true;
  
  private boolean f = false;
  
  public erk(Activity paramActivity) {
    paramActivity.setVolumeControlStream(3);
    this.d = paramActivity.getApplicationContext();
  }
  
  public void a(boolean paramBoolean) {
    this.e = paramBoolean;
  }
  
  public boolean a() {
    return this.e;
  }
  
  public void b(boolean paramBoolean) {
    this.f = paramBoolean;
  }
  
  public boolean b() {
    return this.f;
  }
  
  public void c() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield e : Z
    //   6: ifeq -> 14
    //   9: aload_0
    //   10: invokevirtual d : ()Landroid/media/MediaPlayer;
    //   13: pop
    //   14: aload_0
    //   15: getfield f : Z
    //   18: ifeq -> 39
    //   21: aload_0
    //   22: getfield d : Landroid/content/Context;
    //   25: ldc 'vibrator'
    //   27: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   30: checkcast android/os/Vibrator
    //   33: ldc2_w 200
    //   36: invokevirtual vibrate : (J)V
    //   39: aload_0
    //   40: monitorexit
    //   41: return
    //   42: astore_1
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_1
    //   46: athrow
    // Exception table:
    //   from	to	target	type
    //   2	14	42	finally
    //   14	39	42	finally
  }
  
  public MediaPlayer d() {
    MediaPlayer mediaPlayer = new MediaPlayer();
    mediaPlayer.setAudioStreamType(3);
    mediaPlayer.setOnCompletionListener(new erl(this));
    mediaPlayer.setOnErrorListener(new erm(this));
    try {
      AssetFileDescriptor assetFileDescriptor = this.d.getResources().openRawResourceFd(esb.zxing_beep);
      try {
        mediaPlayer.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        assetFileDescriptor.close();
        mediaPlayer.setVolume(0.1F, 0.1F);
        mediaPlayer.prepare();
        return mediaPlayer;
      } finally {
        assetFileDescriptor.close();
      } 
    } catch (IOException iOException) {
      Log.w(a, iOException);
      mediaPlayer.release();
      return null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\erk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */