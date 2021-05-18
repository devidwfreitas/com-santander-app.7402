import android.content.Context;
import android.net.Uri;
import android.support.v4.provider.DocumentFile;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.net.URLConnection;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;

public class mim {
  public static File a(Context paramContext, Uri paramUri) {
    DocumentFile documentFile = DocumentFile.fromSingleUri(paramContext, paramUri);
    String str3 = documentFile.getType();
    String str4 = documentFile.getName();
    FileInputStream fileInputStream = new FileInputStream(paramContext.getContentResolver().openFileDescriptor(paramUri, mii.p).getFileDescriptor());
    String str2 = paramContext.getExternalCacheDir() + mii.m + str4;
    str4.substring(str4.lastIndexOf('.') + 1);
    str4 = a(str4);
    String str1 = str2;
    if (str3.equals(mii.f)) {
      str1 = str2;
      if (str4 == null)
        str1 = str2 + "." + mii.l; 
    } 
    if (!b(str1))
      return new File(str1); 
    ReadableByteChannel readableByteChannel = Channels.newChannel(fileInputStream);
    WritableByteChannel writableByteChannel = Channels.newChannel(new FileOutputStream(str1));
    a(readableByteChannel, writableByteChannel);
    readableByteChannel.close();
    writableByteChannel.close();
    return new File(str1);
  }
  
  private static String a(String paramString) {
    return URLConnection.guessContentTypeFromName(paramString);
  }
  
  private static void a(ReadableByteChannel paramReadableByteChannel, WritableByteChannel paramWritableByteChannel) {
    ByteBuffer byteBuffer = ByteBuffer.allocateDirect(16384);
    while (paramReadableByteChannel.read(byteBuffer) != -1) {
      byteBuffer.flip();
      paramWritableByteChannel.write(byteBuffer);
      byteBuffer.compact();
    } 
    byteBuffer.flip();
    while (byteBuffer.hasRemaining())
      paramWritableByteChannel.write(byteBuffer); 
  }
  
  private static boolean b(String paramString) {
    if (!c(paramString)) {
      if (!(new File(paramString)).createNewFile());
      return true;
    } 
    return false;
  }
  
  private static boolean c(String paramString) {
    return (new File(paramString)).exists();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mim.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */