package org.simpleframework.xml.util;

import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Resolver<M extends Match> extends AbstractSet<M> {
  protected final Cache cache = new Resolver$Cache(this);
  
  protected final Stack stack = new Resolver$Stack(this, null);
  
  private boolean match(char[] paramArrayOfchar1, int paramInt1, char[] paramArrayOfchar2, int paramInt2) {
    while (paramInt2 < paramArrayOfchar2.length && paramInt1 < paramArrayOfchar1.length) {
      int k = paramInt1;
      int j = paramInt2;
      if (paramArrayOfchar2[paramInt2] == '*') {
        k = paramInt2;
        while (paramArrayOfchar2[k] == '*') {
          paramInt2 = k + 1;
          k = paramInt2;
          if (paramInt2 >= paramArrayOfchar2.length)
            return true; 
        } 
        paramInt2 = paramInt1;
        j = k;
        if (paramArrayOfchar2[k] == '?') {
          j = k + 1;
          if (j < paramArrayOfchar2.length) {
            paramInt2 = paramInt1;
          } else {
            continue;
          } 
        } 
        while (paramInt2 < paramArrayOfchar1.length) {
          if (paramArrayOfchar1[paramInt2] == paramArrayOfchar2[j] || paramArrayOfchar2[j] == '?')
            if (paramArrayOfchar2[j - 1] != '?') {
              if (match(paramArrayOfchar1, paramInt2, paramArrayOfchar2, j))
                return true; 
            } else {
              break;
            }  
          paramInt2++;
        } 
        k = paramInt2;
        if (paramArrayOfchar1.length == paramInt2)
          return false; 
      } 
      int m = k + 1;
      char c = paramArrayOfchar1[k];
      k = j + 1;
      paramInt1 = m;
      paramInt2 = k;
      if (c != paramArrayOfchar2[j]) {
        paramInt1 = m;
        paramInt2 = k;
        if (paramArrayOfchar2[k - 1] != '?')
          return false; 
      } 
    } 
    int i = paramInt2;
    if (paramArrayOfchar2.length == paramInt2)
      return (paramArrayOfchar1.length == paramInt1); 
    while (paramArrayOfchar2[i] == '*') {
      paramInt1 = i + 1;
      i = paramInt1;
      if (paramInt1 >= paramArrayOfchar2.length)
        return true; 
    } 
    return false;
  }
  
  private boolean match(char[] paramArrayOfchar1, char[] paramArrayOfchar2) {
    return match(paramArrayOfchar1, 0, paramArrayOfchar2, 0);
  }
  
  private List<M> resolveAll(String paramString, char[] paramArrayOfchar) {
    ArrayList<M> arrayList = new ArrayList();
    for (Match match : this.stack) {
      if (match(paramArrayOfchar, match.getPattern().toCharArray())) {
        this.cache.put(paramString, arrayList);
        arrayList.add((M)match);
      } 
    } 
    return arrayList;
  }
  
  public boolean add(M paramM) {
    this.stack.push(paramM);
    return true;
  }
  
  public void clear() {
    this.cache.clear();
    this.stack.clear();
  }
  
  public Iterator<M> iterator() {
    return this.stack.sequence();
  }
  
  public boolean remove(M paramM) {
    this.cache.clear();
    return this.stack.remove(paramM);
  }
  
  public M resolve(String paramString) {
    List<M> list2 = this.cache.get(paramString);
    List<M> list1 = list2;
    if (list2 == null)
      list1 = resolveAll(paramString); 
    return (M)(list1.isEmpty() ? null : (Match)list1.get(0));
  }
  
  public List<M> resolveAll(String paramString) {
    List<M> list = this.cache.get(paramString);
    if (list != null)
      return list; 
    char[] arrayOfChar = paramString.toCharArray();
    return (arrayOfChar == null) ? null : resolveAll(paramString, arrayOfChar);
  }
  
  public int size() {
    return this.stack.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xm\\util\Resolver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */