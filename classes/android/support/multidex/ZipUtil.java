package android.support.multidex;

import java.io.File;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import java.util.zip.ZipException;

final class ZipUtil {
  private static final int BUFFER_SIZE = 16384;
  
  private static final int ENDHDR = 22;
  
  private static final int ENDSIG = 101010256;
  
  static long computeCrcOfCentralDir(RandomAccessFile paramRandomAccessFile, ZipUtil$CentralDirectory paramZipUtil$CentralDirectory) {
    CRC32 cRC32 = new CRC32();
    long l = paramZipUtil$CentralDirectory.size;
    paramRandomAccessFile.seek(paramZipUtil$CentralDirectory.offset);
    int i = (int)Math.min(16384L, l);
    byte[] arrayOfByte = new byte[16384];
    i = paramRandomAccessFile.read(arrayOfByte, 0, i);
    while (true) {
      if (i != -1) {
        cRC32.update(arrayOfByte, 0, i);
        l -= i;
        if (l != 0L) {
          i = paramRandomAccessFile.read(arrayOfByte, 0, (int)Math.min(16384L, l));
          continue;
        } 
      } 
      return cRC32.getValue();
    } 
  }
  
  static ZipUtil$CentralDirectory findCentralDirectory(RandomAccessFile paramRandomAccessFile) {
    long l1 = 0L;
    long l2 = paramRandomAccessFile.length() - 22L;
    if (l2 < 0L)
      throw new ZipException("File too short to be a zip file: " + paramRandomAccessFile.length()); 
    long l3 = l2 - 65536L;
    if (l3 >= 0L)
      l1 = l3; 
    int i = Integer.reverseBytes(101010256);
    while (true) {
      paramRandomAccessFile.seek(l2);
      if (paramRandomAccessFile.readInt() == i) {
        paramRandomAccessFile.skipBytes(2);
        paramRandomAccessFile.skipBytes(2);
        paramRandomAccessFile.skipBytes(2);
        paramRandomAccessFile.skipBytes(2);
        ZipUtil$CentralDirectory zipUtil$CentralDirectory = new ZipUtil$CentralDirectory();
        zipUtil$CentralDirectory.size = Integer.reverseBytes(paramRandomAccessFile.readInt()) & 0xFFFFFFFFL;
        zipUtil$CentralDirectory.offset = Integer.reverseBytes(paramRandomAccessFile.readInt()) & 0xFFFFFFFFL;
        return zipUtil$CentralDirectory;
      } 
      l3 = l2 - 1L;
      l2 = l3;
      if (l3 < l1)
        throw new ZipException("End Of Central Directory signature not found"); 
    } 
  }
  
  static long getZipCrc(File paramFile) {
    RandomAccessFile randomAccessFile = new RandomAccessFile(paramFile, "r");
    try {
      return computeCrcOfCentralDir(randomAccessFile, findCentralDirectory(randomAccessFile));
    } finally {
      randomAccessFile.close();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\multidex\ZipUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */