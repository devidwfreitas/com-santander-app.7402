package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class PathParser$PathSection implements Expression {
  private int begin;
  
  private List<String> cache = new ArrayList<String>();
  
  private int end;
  
  private String path;
  
  private String section;
  
  public PathParser$PathSection(int paramInt1, int paramInt2) {
    this.begin = paramInt1;
    this.end = paramInt2;
  }
  
  private String getCanonicalPath() {
    int j = 0;
    int i = 0;
    while (j < this.begin) {
      i = PathParser.this.location.indexOf('/', i + 1);
      j++;
    } 
    int m = i;
    int k = j;
    while (k <= this.end) {
      m = PathParser.this.location.indexOf('/', m + 1);
      j = m;
      if (m == -1)
        j = PathParser.this.location.length(); 
      k++;
      m = j;
    } 
    return PathParser.this.location.substring(i + 1, m);
  }
  
  private String getFragment() {
    int j = 0;
    int i = PathParser.this.start;
    int k = 0;
    while (true) {
      int m = i;
      if (j <= this.end) {
        if (i >= PathParser.this.count) {
          m = i + 1;
          return new String(PathParser.this.data, k, m - 1 - k);
        } 
      } else {
        return new String(PathParser.this.data, k, m - 1 - k);
      } 
      char[] arrayOfChar = PathParser.this.data;
      m = i + 1;
      int n = j;
      if (arrayOfChar[i] == '/') {
        n = ++j;
        if (j == this.begin) {
          k = m;
          i = m;
          continue;
        } 
      } 
      i = m;
      j = n;
    } 
  }
  
  public String getAttribute(String paramString) {
    String str2 = getPath();
    String str1 = paramString;
    if (str2 != null)
      str1 = PathParser.this.getAttributePath(str2, paramString); 
    return str1;
  }
  
  public String getElement(String paramString) {
    String str2 = getPath();
    String str1 = paramString;
    if (str2 != null)
      str1 = PathParser.this.getElementPath(str2, paramString); 
    return str1;
  }
  
  public String getFirst() {
    return PathParser.this.names.get(this.begin);
  }
  
  public int getIndex() {
    return ((Integer)PathParser.this.indexes.get(this.begin)).intValue();
  }
  
  public String getLast() {
    return PathParser.this.names.get(this.end);
  }
  
  public String getPath() {
    if (this.section == null)
      this.section = getCanonicalPath(); 
    return this.section;
  }
  
  public Expression getPath(int paramInt) {
    return getPath(paramInt, 0);
  }
  
  public Expression getPath(int paramInt1, int paramInt2) {
    return new PathParser$PathSection(this.begin + paramInt1, this.end - paramInt2);
  }
  
  public String getPrefix() {
    return PathParser.this.prefixes.get(this.begin);
  }
  
  public boolean isAttribute() {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (PathParser.this.attribute) {
      bool1 = bool2;
      if (this.end >= PathParser.this.names.size() - 1)
        bool1 = true; 
    } 
    return bool1;
  }
  
  public boolean isEmpty() {
    return (this.begin == this.end);
  }
  
  public boolean isPath() {
    return (this.end - this.begin >= 1);
  }
  
  public Iterator<String> iterator() {
    if (this.cache.isEmpty())
      for (int i = this.begin; i <= this.end; i++) {
        String str = PathParser.this.names.get(i);
        if (str != null)
          this.cache.add(str); 
      }  
    return this.cache.iterator();
  }
  
  public String toString() {
    if (this.path == null)
      this.path = getFragment(); 
    return this.path;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\PathParser$PathSection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */