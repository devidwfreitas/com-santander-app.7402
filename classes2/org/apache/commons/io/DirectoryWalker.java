package org.apache.commons.io;

import java.io.File;
import java.io.FileFilter;
import java.util.Collection;
import org.apache.commons.io.filefilter.FileFilterUtils;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.apache.commons.io.filefilter.TrueFileFilter;

public abstract class DirectoryWalker<T> {
  private final int depthLimit;
  
  private final FileFilter filter;
  
  protected DirectoryWalker() {
    this(null, -1);
  }
  
  protected DirectoryWalker(FileFilter paramFileFilter, int paramInt) {
    this.filter = paramFileFilter;
    this.depthLimit = paramInt;
  }
  
  protected DirectoryWalker(IOFileFilter paramIOFileFilter1, IOFileFilter paramIOFileFilter2, int paramInt) {
    if (paramIOFileFilter1 == null && paramIOFileFilter2 == null) {
      this.filter = null;
    } else {
      if (paramIOFileFilter1 == null)
        paramIOFileFilter1 = TrueFileFilter.TRUE; 
      if (paramIOFileFilter2 == null)
        paramIOFileFilter2 = TrueFileFilter.TRUE; 
      this.filter = (FileFilter)FileFilterUtils.or(new IOFileFilter[] { FileFilterUtils.makeDirectoryOnly(paramIOFileFilter1), FileFilterUtils.makeFileOnly(paramIOFileFilter2) });
    } 
    this.depthLimit = paramInt;
  }
  
  private void walk(File paramFile, int paramInt, Collection<T> paramCollection) {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: iload_2
    //   3: aload_3
    //   4: invokevirtual checkIfCancelled : (Ljava/io/File;ILjava/util/Collection;)V
    //   7: aload_0
    //   8: aload_1
    //   9: iload_2
    //   10: aload_3
    //   11: invokevirtual handleDirectory : (Ljava/io/File;ILjava/util/Collection;)Z
    //   14: ifeq -> 95
    //   17: aload_0
    //   18: aload_1
    //   19: iload_2
    //   20: aload_3
    //   21: invokevirtual handleDirectoryStart : (Ljava/io/File;ILjava/util/Collection;)V
    //   24: iload_2
    //   25: iconst_1
    //   26: iadd
    //   27: istore #5
    //   29: aload_0
    //   30: getfield depthLimit : I
    //   33: iflt -> 45
    //   36: iload #5
    //   38: aload_0
    //   39: getfield depthLimit : I
    //   42: if_icmpgt -> 88
    //   45: aload_0
    //   46: aload_1
    //   47: iload_2
    //   48: aload_3
    //   49: invokevirtual checkIfCancelled : (Ljava/io/File;ILjava/util/Collection;)V
    //   52: aload_0
    //   53: getfield filter : Ljava/io/FileFilter;
    //   56: ifnonnull -> 103
    //   59: aload_1
    //   60: invokevirtual listFiles : ()[Ljava/io/File;
    //   63: astore #7
    //   65: aload_0
    //   66: aload_1
    //   67: iload_2
    //   68: aload #7
    //   70: invokevirtual filterDirectoryContents : (Ljava/io/File;I[Ljava/io/File;)[Ljava/io/File;
    //   73: astore #7
    //   75: aload #7
    //   77: ifnonnull -> 116
    //   80: aload_0
    //   81: aload_1
    //   82: iload #5
    //   84: aload_3
    //   85: invokevirtual handleRestricted : (Ljava/io/File;ILjava/util/Collection;)V
    //   88: aload_0
    //   89: aload_1
    //   90: iload_2
    //   91: aload_3
    //   92: invokevirtual handleDirectoryEnd : (Ljava/io/File;ILjava/util/Collection;)V
    //   95: aload_0
    //   96: aload_1
    //   97: iload_2
    //   98: aload_3
    //   99: invokevirtual checkIfCancelled : (Ljava/io/File;ILjava/util/Collection;)V
    //   102: return
    //   103: aload_1
    //   104: aload_0
    //   105: getfield filter : Ljava/io/FileFilter;
    //   108: invokevirtual listFiles : (Ljava/io/FileFilter;)[Ljava/io/File;
    //   111: astore #7
    //   113: goto -> 65
    //   116: aload #7
    //   118: arraylength
    //   119: istore #6
    //   121: iconst_0
    //   122: istore #4
    //   124: iload #4
    //   126: iload #6
    //   128: if_icmpge -> 88
    //   131: aload #7
    //   133: iload #4
    //   135: aaload
    //   136: astore #8
    //   138: aload #8
    //   140: invokevirtual isDirectory : ()Z
    //   143: ifeq -> 164
    //   146: aload_0
    //   147: aload #8
    //   149: iload #5
    //   151: aload_3
    //   152: invokespecial walk : (Ljava/io/File;ILjava/util/Collection;)V
    //   155: iload #4
    //   157: iconst_1
    //   158: iadd
    //   159: istore #4
    //   161: goto -> 124
    //   164: aload_0
    //   165: aload #8
    //   167: iload #5
    //   169: aload_3
    //   170: invokevirtual checkIfCancelled : (Ljava/io/File;ILjava/util/Collection;)V
    //   173: aload_0
    //   174: aload #8
    //   176: iload #5
    //   178: aload_3
    //   179: invokevirtual handleFile : (Ljava/io/File;ILjava/util/Collection;)V
    //   182: aload_0
    //   183: aload #8
    //   185: iload #5
    //   187: aload_3
    //   188: invokevirtual checkIfCancelled : (Ljava/io/File;ILjava/util/Collection;)V
    //   191: goto -> 155
  }
  
  protected final void checkIfCancelled(File paramFile, int paramInt, Collection<T> paramCollection) {
    if (handleIsCancelled(paramFile, paramInt, paramCollection))
      throw new DirectoryWalker$CancelException(paramFile, paramInt); 
  }
  
  protected File[] filterDirectoryContents(File paramFile, int paramInt, File[] paramArrayOfFile) {
    return paramArrayOfFile;
  }
  
  protected void handleCancelled(File paramFile, Collection<T> paramCollection, DirectoryWalker$CancelException paramDirectoryWalker$CancelException) {
    throw paramDirectoryWalker$CancelException;
  }
  
  protected boolean handleDirectory(File paramFile, int paramInt, Collection<T> paramCollection) {
    return true;
  }
  
  protected void handleDirectoryEnd(File paramFile, int paramInt, Collection<T> paramCollection) {}
  
  protected void handleDirectoryStart(File paramFile, int paramInt, Collection<T> paramCollection) {}
  
  protected void handleEnd(Collection<T> paramCollection) {}
  
  protected void handleFile(File paramFile, int paramInt, Collection<T> paramCollection) {}
  
  protected boolean handleIsCancelled(File paramFile, int paramInt, Collection<T> paramCollection) {
    return false;
  }
  
  protected void handleRestricted(File paramFile, int paramInt, Collection<T> paramCollection) {}
  
  protected void handleStart(File paramFile, Collection<T> paramCollection) {}
  
  protected final void walk(File paramFile, Collection<T> paramCollection) {
    if (paramFile == null)
      throw new NullPointerException("Start Directory is null"); 
    try {
      handleStart(paramFile, paramCollection);
      walk(paramFile, 0, paramCollection);
      handleEnd(paramCollection);
      return;
    } catch (DirectoryWalker$CancelException directoryWalker$CancelException) {
      handleCancelled(paramFile, paramCollection, directoryWalker$CancelException);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\DirectoryWalker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */