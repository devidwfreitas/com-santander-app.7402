package org.apache.commons.io.monitor;

import java.io.File;
import java.io.FileFilter;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOCase;
import org.apache.commons.io.comparator.NameFileComparator;

public class FileAlterationObserver implements Serializable {
  private final Comparator<File> comparator;
  
  private final FileFilter fileFilter;
  
  private final List<FileAlterationListener> listeners = new CopyOnWriteArrayList<FileAlterationListener>();
  
  private final FileEntry rootEntry;
  
  public FileAlterationObserver(File paramFile) {
    this(paramFile, (FileFilter)null);
  }
  
  public FileAlterationObserver(File paramFile, FileFilter paramFileFilter) {
    this(paramFile, paramFileFilter, (IOCase)null);
  }
  
  public FileAlterationObserver(File paramFile, FileFilter paramFileFilter, IOCase paramIOCase) {
    this(new FileEntry(paramFile), paramFileFilter, paramIOCase);
  }
  
  public FileAlterationObserver(String paramString) {
    this(new File(paramString));
  }
  
  public FileAlterationObserver(String paramString, FileFilter paramFileFilter) {
    this(new File(paramString), paramFileFilter);
  }
  
  public FileAlterationObserver(String paramString, FileFilter paramFileFilter, IOCase paramIOCase) {
    this(new File(paramString), paramFileFilter, paramIOCase);
  }
  
  protected FileAlterationObserver(FileEntry paramFileEntry, FileFilter paramFileFilter, IOCase paramIOCase) {
    if (paramFileEntry == null)
      throw new IllegalArgumentException("Root entry is missing"); 
    if (paramFileEntry.getFile() == null)
      throw new IllegalArgumentException("Root directory is missing"); 
    this.rootEntry = paramFileEntry;
    this.fileFilter = paramFileFilter;
    if (paramIOCase == null || paramIOCase.equals(IOCase.SYSTEM)) {
      this.comparator = NameFileComparator.NAME_SYSTEM_COMPARATOR;
      return;
    } 
    if (paramIOCase.equals(IOCase.INSENSITIVE)) {
      this.comparator = NameFileComparator.NAME_INSENSITIVE_COMPARATOR;
      return;
    } 
    this.comparator = NameFileComparator.NAME_COMPARATOR;
  }
  
  private void checkAndNotify(FileEntry paramFileEntry, FileEntry[] paramArrayOfFileEntry, File[] paramArrayOfFile) {
    int k;
    FileEntry[] arrayOfFileEntry;
    int i = 0;
    if (paramArrayOfFile.length > 0) {
      arrayOfFileEntry = new FileEntry[paramArrayOfFile.length];
    } else {
      arrayOfFileEntry = FileEntry.EMPTY_ENTRIES;
    } 
    int m = paramArrayOfFileEntry.length;
    int j = 0;
    while (true) {
      k = i;
      if (j < m) {
        FileEntry fileEntry = paramArrayOfFileEntry[j];
        while (i < paramArrayOfFile.length && this.comparator.compare(fileEntry.getFile(), paramArrayOfFile[i]) > 0) {
          arrayOfFileEntry[i] = createFileEntry(paramFileEntry, paramArrayOfFile[i]);
          doCreate(arrayOfFileEntry[i]);
          i++;
        } 
        if (i < paramArrayOfFile.length && this.comparator.compare(fileEntry.getFile(), paramArrayOfFile[i]) == 0) {
          doMatch(fileEntry, paramArrayOfFile[i]);
          checkAndNotify(fileEntry, fileEntry.getChildren(), listFiles(paramArrayOfFile[i]));
          arrayOfFileEntry[i] = fileEntry;
          i++;
        } else {
          checkAndNotify(fileEntry, fileEntry.getChildren(), FileUtils.EMPTY_FILE_ARRAY);
          doDelete(fileEntry);
        } 
        j++;
        continue;
      } 
      break;
    } 
    while (k < paramArrayOfFile.length) {
      arrayOfFileEntry[k] = createFileEntry(paramFileEntry, paramArrayOfFile[k]);
      doCreate(arrayOfFileEntry[k]);
      k++;
    } 
    paramFileEntry.setChildren(arrayOfFileEntry);
  }
  
  private FileEntry createFileEntry(FileEntry paramFileEntry, File paramFile) {
    FileEntry[] arrayOfFileEntry;
    FileEntry fileEntry = paramFileEntry.newChildInstance(paramFile);
    fileEntry.refresh(paramFile);
    File[] arrayOfFile = listFiles(paramFile);
    if (arrayOfFile.length > 0) {
      arrayOfFileEntry = new FileEntry[arrayOfFile.length];
    } else {
      arrayOfFileEntry = FileEntry.EMPTY_ENTRIES;
    } 
    for (int i = 0; i < arrayOfFile.length; i++)
      arrayOfFileEntry[i] = createFileEntry(fileEntry, arrayOfFile[i]); 
    fileEntry.setChildren(arrayOfFileEntry);
    return fileEntry;
  }
  
  private void doCreate(FileEntry paramFileEntry) {
    for (FileAlterationListener fileAlterationListener : this.listeners) {
      if (paramFileEntry.isDirectory()) {
        fileAlterationListener.onDirectoryCreate(paramFileEntry.getFile());
        continue;
      } 
      fileAlterationListener.onFileCreate(paramFileEntry.getFile());
    } 
    FileEntry[] arrayOfFileEntry = paramFileEntry.getChildren();
    int j = arrayOfFileEntry.length;
    for (int i = 0; i < j; i++)
      doCreate(arrayOfFileEntry[i]); 
  }
  
  private void doDelete(FileEntry paramFileEntry) {
    for (FileAlterationListener fileAlterationListener : this.listeners) {
      if (paramFileEntry.isDirectory()) {
        fileAlterationListener.onDirectoryDelete(paramFileEntry.getFile());
        continue;
      } 
      fileAlterationListener.onFileDelete(paramFileEntry.getFile());
    } 
  }
  
  private void doMatch(FileEntry paramFileEntry, File paramFile) {
    if (paramFileEntry.refresh(paramFile))
      for (FileAlterationListener fileAlterationListener : this.listeners) {
        if (paramFileEntry.isDirectory()) {
          fileAlterationListener.onDirectoryChange(paramFile);
          continue;
        } 
        fileAlterationListener.onFileChange(paramFile);
      }  
  }
  
  private File[] listFiles(File paramFile) {
    File[] arrayOfFile2 = null;
    if (paramFile.isDirectory())
      if (this.fileFilter == null) {
        arrayOfFile2 = paramFile.listFiles();
      } else {
        arrayOfFile2 = paramFile.listFiles(this.fileFilter);
      }  
    File[] arrayOfFile1 = arrayOfFile2;
    if (arrayOfFile2 == null)
      arrayOfFile1 = FileUtils.EMPTY_FILE_ARRAY; 
    if (this.comparator != null && arrayOfFile1.length > 1)
      Arrays.sort(arrayOfFile1, this.comparator); 
    return arrayOfFile1;
  }
  
  public void addListener(FileAlterationListener paramFileAlterationListener) {
    if (paramFileAlterationListener != null)
      this.listeners.add(paramFileAlterationListener); 
  }
  
  public void checkAndNotify() {
    Iterator<FileAlterationListener> iterator2 = this.listeners.iterator();
    while (iterator2.hasNext())
      ((FileAlterationListener)iterator2.next()).onStart(this); 
    File file = this.rootEntry.getFile();
    if (file.exists()) {
      checkAndNotify(this.rootEntry, this.rootEntry.getChildren(), listFiles(file));
    } else if (this.rootEntry.isExists()) {
      checkAndNotify(this.rootEntry, this.rootEntry.getChildren(), FileUtils.EMPTY_FILE_ARRAY);
    } 
    Iterator<FileAlterationListener> iterator1 = this.listeners.iterator();
    while (iterator1.hasNext())
      ((FileAlterationListener)iterator1.next()).onStop(this); 
  }
  
  public void destroy() {}
  
  public File getDirectory() {
    return this.rootEntry.getFile();
  }
  
  public FileFilter getFileFilter() {
    return this.fileFilter;
  }
  
  public Iterable<FileAlterationListener> getListeners() {
    return this.listeners;
  }
  
  public void initialize() {
    FileEntry[] arrayOfFileEntry;
    this.rootEntry.refresh(this.rootEntry.getFile());
    File[] arrayOfFile = listFiles(this.rootEntry.getFile());
    if (arrayOfFile.length > 0) {
      arrayOfFileEntry = new FileEntry[arrayOfFile.length];
    } else {
      arrayOfFileEntry = FileEntry.EMPTY_ENTRIES;
    } 
    for (int i = 0; i < arrayOfFile.length; i++)
      arrayOfFileEntry[i] = createFileEntry(this.rootEntry, arrayOfFile[i]); 
    this.rootEntry.setChildren(arrayOfFileEntry);
  }
  
  public void removeListener(FileAlterationListener paramFileAlterationListener) {
    if (paramFileAlterationListener != null)
      do {
      
      } while (this.listeners.remove(paramFileAlterationListener)); 
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(getClass().getSimpleName());
    stringBuilder.append("[file='");
    stringBuilder.append(getDirectory().getPath());
    stringBuilder.append('\'');
    if (this.fileFilter != null) {
      stringBuilder.append(", ");
      stringBuilder.append(this.fileFilter.toString());
    } 
    stringBuilder.append(", listeners=");
    stringBuilder.append(this.listeners.size());
    stringBuilder.append("]");
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\monitor\FileAlterationObserver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */