package org.apache.commons.io.monitor;

import java.io.File;
import java.io.Serializable;

public class FileEntry implements Serializable {
  static final FileEntry[] EMPTY_ENTRIES = new FileEntry[0];
  
  private FileEntry[] children;
  
  private boolean directory;
  
  private boolean exists;
  
  private final File file;
  
  private long lastModified;
  
  private long length;
  
  private String name;
  
  private final FileEntry parent;
  
  public FileEntry(File paramFile) {
    this((FileEntry)null, paramFile);
  }
  
  public FileEntry(FileEntry paramFileEntry, File paramFile) {
    if (paramFile == null)
      throw new IllegalArgumentException("File is missing"); 
    this.file = paramFile;
    this.parent = paramFileEntry;
    this.name = paramFile.getName();
  }
  
  public FileEntry[] getChildren() {
    return (this.children != null) ? this.children : EMPTY_ENTRIES;
  }
  
  public File getFile() {
    return this.file;
  }
  
  public long getLastModified() {
    return this.lastModified;
  }
  
  public long getLength() {
    return this.length;
  }
  
  public int getLevel() {
    return (this.parent == null) ? 0 : (this.parent.getLevel() + 1);
  }
  
  public String getName() {
    return this.name;
  }
  
  public FileEntry getParent() {
    return this.parent;
  }
  
  public boolean isDirectory() {
    return this.directory;
  }
  
  public boolean isExists() {
    return this.exists;
  }
  
  public FileEntry newChildInstance(File paramFile) {
    return new FileEntry(this, paramFile);
  }
  
  public boolean refresh(File paramFile) {
    long l2 = 0L;
    boolean bool = false;
    boolean bool1 = this.exists;
    long l3 = this.lastModified;
    boolean bool2 = this.directory;
    long l4 = this.length;
    this.name = paramFile.getName();
    this.exists = paramFile.exists();
    if (this.exists) {
      null = paramFile.isDirectory();
    } else {
      null = false;
    } 
    this.directory = null;
    if (this.exists) {
      l1 = paramFile.lastModified();
    } else {
      l1 = 0L;
    } 
    this.lastModified = l1;
    long l1 = l2;
    if (this.exists) {
      l1 = l2;
      if (!this.directory)
        l1 = paramFile.length(); 
    } 
    this.length = l1;
    if (this.exists == bool1 && this.lastModified == l3 && this.directory == bool2) {
      null = bool;
      return (this.length != l4) ? true : null;
    } 
    return true;
  }
  
  public void setChildren(FileEntry[] paramArrayOfFileEntry) {
    this.children = paramArrayOfFileEntry;
  }
  
  public void setDirectory(boolean paramBoolean) {
    this.directory = paramBoolean;
  }
  
  public void setExists(boolean paramBoolean) {
    this.exists = paramBoolean;
  }
  
  public void setLastModified(long paramLong) {
    this.lastModified = paramLong;
  }
  
  public void setLength(long paramLong) {
    this.length = paramLong;
  }
  
  public void setName(String paramString) {
    this.name = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\monitor\FileEntry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */