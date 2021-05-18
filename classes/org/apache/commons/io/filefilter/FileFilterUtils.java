package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.apache.commons.io.IOCase;

public class FileFilterUtils {
  private static final IOFileFilter cvsFilter = notFileFilter(and(new IOFileFilter[] { directoryFileFilter(), nameFileFilter("CVS") }));
  
  private static final IOFileFilter svnFilter = notFileFilter(and(new IOFileFilter[] { directoryFileFilter(), nameFileFilter(".svn") }));
  
  public static IOFileFilter ageFileFilter(long paramLong) {
    return (IOFileFilter)new AgeFileFilter(paramLong);
  }
  
  public static IOFileFilter ageFileFilter(long paramLong, boolean paramBoolean) {
    return (IOFileFilter)new AgeFileFilter(paramLong, paramBoolean);
  }
  
  public static IOFileFilter ageFileFilter(File paramFile) {
    return (IOFileFilter)new AgeFileFilter(paramFile);
  }
  
  public static IOFileFilter ageFileFilter(File paramFile, boolean paramBoolean) {
    return (IOFileFilter)new AgeFileFilter(paramFile, paramBoolean);
  }
  
  public static IOFileFilter ageFileFilter(Date paramDate) {
    return (IOFileFilter)new AgeFileFilter(paramDate);
  }
  
  public static IOFileFilter ageFileFilter(Date paramDate, boolean paramBoolean) {
    return (IOFileFilter)new AgeFileFilter(paramDate, paramBoolean);
  }
  
  public static IOFileFilter and(IOFileFilter... paramVarArgs) {
    return (IOFileFilter)new AndFileFilter(toList(paramVarArgs));
  }
  
  @Deprecated
  public static IOFileFilter andFileFilter(IOFileFilter paramIOFileFilter1, IOFileFilter paramIOFileFilter2) {
    return (IOFileFilter)new AndFileFilter(paramIOFileFilter1, paramIOFileFilter2);
  }
  
  public static IOFileFilter asFileFilter(FileFilter paramFileFilter) {
    return (IOFileFilter)new DelegateFileFilter(paramFileFilter);
  }
  
  public static IOFileFilter asFileFilter(FilenameFilter paramFilenameFilter) {
    return (IOFileFilter)new DelegateFileFilter(paramFilenameFilter);
  }
  
  public static IOFileFilter directoryFileFilter() {
    return DirectoryFileFilter.DIRECTORY;
  }
  
  public static IOFileFilter falseFileFilter() {
    return FalseFileFilter.FALSE;
  }
  
  public static IOFileFilter fileFileFilter() {
    return FileFileFilter.FILE;
  }
  
  private static <T extends java.util.Collection<File>> T filter(IOFileFilter paramIOFileFilter, Iterable<File> paramIterable, T paramT) {
    if (paramIOFileFilter == null)
      throw new IllegalArgumentException("file filter is null"); 
    if (paramIterable != null)
      for (File file : paramIterable) {
        if (file == null)
          throw new IllegalArgumentException("file collection contains null"); 
        if (paramIOFileFilter.accept(file))
          paramT.add(file); 
      }  
    return paramT;
  }
  
  public static File[] filter(IOFileFilter paramIOFileFilter, Iterable<File> paramIterable) {
    List<File> list = filterList(paramIOFileFilter, paramIterable);
    return list.<File>toArray(new File[list.size()]);
  }
  
  public static File[] filter(IOFileFilter paramIOFileFilter, File... paramVarArgs) {
    int i = 0;
    if (paramIOFileFilter == null)
      throw new IllegalArgumentException("file filter is null"); 
    if (paramVarArgs == null)
      return new File[0]; 
    ArrayList<File> arrayList = new ArrayList();
    int j = paramVarArgs.length;
    while (i < j) {
      File file = paramVarArgs[i];
      if (file == null)
        throw new IllegalArgumentException("file array contains null"); 
      if (paramIOFileFilter.accept(file))
        arrayList.add(file); 
      i++;
    } 
    return arrayList.<File>toArray(new File[arrayList.size()]);
  }
  
  public static List<File> filterList(IOFileFilter paramIOFileFilter, Iterable<File> paramIterable) {
    return filter(paramIOFileFilter, paramIterable, new ArrayList<File>());
  }
  
  public static List<File> filterList(IOFileFilter paramIOFileFilter, File... paramVarArgs) {
    return Arrays.asList(filter(paramIOFileFilter, paramVarArgs));
  }
  
  public static Set<File> filterSet(IOFileFilter paramIOFileFilter, Iterable<File> paramIterable) {
    return filter(paramIOFileFilter, paramIterable, new HashSet<File>());
  }
  
  public static Set<File> filterSet(IOFileFilter paramIOFileFilter, File... paramVarArgs) {
    return new HashSet<File>(Arrays.asList(filter(paramIOFileFilter, paramVarArgs)));
  }
  
  public static IOFileFilter magicNumberFileFilter(String paramString) {
    return (IOFileFilter)new MagicNumberFileFilter(paramString);
  }
  
  public static IOFileFilter magicNumberFileFilter(String paramString, long paramLong) {
    return (IOFileFilter)new MagicNumberFileFilter(paramString, paramLong);
  }
  
  public static IOFileFilter magicNumberFileFilter(byte[] paramArrayOfbyte) {
    return (IOFileFilter)new MagicNumberFileFilter(paramArrayOfbyte);
  }
  
  public static IOFileFilter magicNumberFileFilter(byte[] paramArrayOfbyte, long paramLong) {
    return (IOFileFilter)new MagicNumberFileFilter(paramArrayOfbyte, paramLong);
  }
  
  public static IOFileFilter makeCVSAware(IOFileFilter paramIOFileFilter) {
    return (paramIOFileFilter == null) ? cvsFilter : and(new IOFileFilter[] { paramIOFileFilter, cvsFilter });
  }
  
  public static IOFileFilter makeDirectoryOnly(IOFileFilter paramIOFileFilter) {
    return (IOFileFilter)((paramIOFileFilter == null) ? DirectoryFileFilter.DIRECTORY : new AndFileFilter(DirectoryFileFilter.DIRECTORY, paramIOFileFilter));
  }
  
  public static IOFileFilter makeFileOnly(IOFileFilter paramIOFileFilter) {
    return (IOFileFilter)((paramIOFileFilter == null) ? FileFileFilter.FILE : new AndFileFilter(FileFileFilter.FILE, paramIOFileFilter));
  }
  
  public static IOFileFilter makeSVNAware(IOFileFilter paramIOFileFilter) {
    return (paramIOFileFilter == null) ? svnFilter : and(new IOFileFilter[] { paramIOFileFilter, svnFilter });
  }
  
  public static IOFileFilter nameFileFilter(String paramString) {
    return (IOFileFilter)new NameFileFilter(paramString);
  }
  
  public static IOFileFilter nameFileFilter(String paramString, IOCase paramIOCase) {
    return (IOFileFilter)new NameFileFilter(paramString, paramIOCase);
  }
  
  public static IOFileFilter notFileFilter(IOFileFilter paramIOFileFilter) {
    return (IOFileFilter)new NotFileFilter(paramIOFileFilter);
  }
  
  public static IOFileFilter or(IOFileFilter... paramVarArgs) {
    return (IOFileFilter)new OrFileFilter(toList(paramVarArgs));
  }
  
  @Deprecated
  public static IOFileFilter orFileFilter(IOFileFilter paramIOFileFilter1, IOFileFilter paramIOFileFilter2) {
    return (IOFileFilter)new OrFileFilter(paramIOFileFilter1, paramIOFileFilter2);
  }
  
  public static IOFileFilter prefixFileFilter(String paramString) {
    return (IOFileFilter)new PrefixFileFilter(paramString);
  }
  
  public static IOFileFilter prefixFileFilter(String paramString, IOCase paramIOCase) {
    return (IOFileFilter)new PrefixFileFilter(paramString, paramIOCase);
  }
  
  public static IOFileFilter sizeFileFilter(long paramLong) {
    return (IOFileFilter)new SizeFileFilter(paramLong);
  }
  
  public static IOFileFilter sizeFileFilter(long paramLong, boolean paramBoolean) {
    return (IOFileFilter)new SizeFileFilter(paramLong, paramBoolean);
  }
  
  public static IOFileFilter sizeRangeFileFilter(long paramLong1, long paramLong2) {
    return (IOFileFilter)new AndFileFilter((IOFileFilter)new SizeFileFilter(paramLong1, true), (IOFileFilter)new SizeFileFilter(1L + paramLong2, false));
  }
  
  public static IOFileFilter suffixFileFilter(String paramString) {
    return (IOFileFilter)new SuffixFileFilter(paramString);
  }
  
  public static IOFileFilter suffixFileFilter(String paramString, IOCase paramIOCase) {
    return (IOFileFilter)new SuffixFileFilter(paramString, paramIOCase);
  }
  
  public static List<IOFileFilter> toList(IOFileFilter... paramVarArgs) {
    if (paramVarArgs == null)
      throw new IllegalArgumentException("The filters must not be null"); 
    ArrayList<IOFileFilter> arrayList = new ArrayList(paramVarArgs.length);
    for (int i = 0; i < paramVarArgs.length; i++) {
      if (paramVarArgs[i] == null)
        throw new IllegalArgumentException("The filter[" + i + "] is null"); 
      arrayList.add(paramVarArgs[i]);
    } 
    return arrayList;
  }
  
  public static IOFileFilter trueFileFilter() {
    return TrueFileFilter.TRUE;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\org\apache\commons\io\filefilter\FileFilterUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */