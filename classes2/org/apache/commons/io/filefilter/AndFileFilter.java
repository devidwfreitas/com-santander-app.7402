package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class AndFileFilter extends AbstractFileFilter implements Serializable, ConditionalFileFilter {
  private final List<IOFileFilter> fileFilters;
  
  public AndFileFilter() {
    this.fileFilters = new ArrayList<IOFileFilter>();
  }
  
  public AndFileFilter(List<IOFileFilter> paramList) {
    if (paramList == null) {
      this.fileFilters = new ArrayList<IOFileFilter>();
      return;
    } 
    this.fileFilters = new ArrayList<IOFileFilter>(paramList);
  }
  
  public AndFileFilter(IOFileFilter paramIOFileFilter1, IOFileFilter paramIOFileFilter2) {
    if (paramIOFileFilter1 == null || paramIOFileFilter2 == null)
      throw new IllegalArgumentException("The filters must not be null"); 
    this.fileFilters = new ArrayList<IOFileFilter>(2);
    addFileFilter(paramIOFileFilter1);
    addFileFilter(paramIOFileFilter2);
  }
  
  public boolean accept(File paramFile) {
    if (this.fileFilters.isEmpty())
      return false; 
    Iterator<IOFileFilter> iterator = this.fileFilters.iterator();
    while (iterator.hasNext()) {
      if (!((IOFileFilter)iterator.next()).accept(paramFile))
        return false; 
    } 
    return true;
  }
  
  public boolean accept(File paramFile, String paramString) {
    if (this.fileFilters.isEmpty())
      return false; 
    Iterator<IOFileFilter> iterator = this.fileFilters.iterator();
    while (iterator.hasNext()) {
      if (!((IOFileFilter)iterator.next()).accept(paramFile, paramString))
        return false; 
    } 
    return true;
  }
  
  public void addFileFilter(IOFileFilter paramIOFileFilter) {
    this.fileFilters.add(paramIOFileFilter);
  }
  
  public List<IOFileFilter> getFileFilters() {
    return Collections.unmodifiableList(this.fileFilters);
  }
  
  public boolean removeFileFilter(IOFileFilter paramIOFileFilter) {
    return this.fileFilters.remove(paramIOFileFilter);
  }
  
  public void setFileFilters(List<IOFileFilter> paramList) {
    this.fileFilters.clear();
    this.fileFilters.addAll(paramList);
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(super.toString());
    stringBuilder.append("(");
    if (this.fileFilters != null)
      for (int i = 0; i < this.fileFilters.size(); i++) {
        if (i > 0)
          stringBuilder.append(","); 
        String str = (String)this.fileFilters.get(i);
        if (str == null) {
          str = "null";
        } else {
          str = str.toString();
        } 
        stringBuilder.append(str);
      }  
    stringBuilder.append(")");
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\filefilter\AndFileFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */