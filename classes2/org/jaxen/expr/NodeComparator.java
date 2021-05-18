package org.jaxen.expr;

import java.util.Comparator;
import org.jaxen.Navigator;
import org.jaxen.UnsupportedAxisException;

class NodeComparator implements Comparator {
  private Navigator navigator;
  
  NodeComparator(Navigator paramNavigator) {
    this.navigator = paramNavigator;
  }
  
  private int compareSiblings(Object paramObject1, Object paramObject2) {
    if (!isNonChild(paramObject1)) {
      if (isNonChild(paramObject2))
        return -1; 
      paramObject1 = this.navigator.getFollowingSiblingAxisIterator(paramObject1);
      while (true) {
        if (paramObject1.hasNext()) {
          if (paramObject1.next().equals(paramObject2))
            return -1; 
          continue;
        } 
        return 1;
      } 
    } 
    return 1;
  }
  
  private int getDepth(Object paramObject) {
    int i = 0;
    while (true) {
      paramObject = this.navigator.getParentNode(paramObject);
      if (paramObject != null) {
        i++;
        continue;
      } 
      return i;
    } 
  }
  
  private boolean isNonChild(Object paramObject) {
    return (this.navigator.isAttribute(paramObject) || this.navigator.isNamespace(paramObject));
  }
  
  public int compare(Object paramObject1, Object paramObject2) {
    if (paramObject1 != paramObject2 && this.navigator != null) {
      int i;
      int j;
      Object object2;
      if (isNonChild(paramObject1) && isNonChild(paramObject2))
        try {
          object2 = this.navigator.getParentNode(paramObject1);
          Object object = this.navigator.getParentNode(paramObject2);
          if (object2 == object) {
            if (this.navigator.isNamespace(paramObject1) && this.navigator.isAttribute(paramObject2))
              return -1; 
            if (this.navigator.isNamespace(paramObject2) && this.navigator.isAttribute(paramObject1))
              return 1; 
            if (this.navigator.isNamespace(paramObject1))
              return this.navigator.getNamespacePrefix(paramObject1).compareTo(this.navigator.getNamespacePrefix(paramObject2)); 
            if (this.navigator.isAttribute(paramObject1))
              return this.navigator.getAttributeQName(paramObject1).compareTo(this.navigator.getAttributeQName(paramObject2)); 
          } 
          return compare(object2, object);
        } catch (UnsupportedAxisException null) {
          return 0;
        }  
      try {
        i = getDepth(unsupportedAxisException);
        j = getDepth(paramObject2);
        object2 = unsupportedAxisException;
        while (i > j) {
          object2 = this.navigator.getParentNode(object2);
          i--;
        } 
      } catch (UnsupportedAxisException unsupportedAxisException) {
        return 0;
      } 
      if (object2 == paramObject2)
        return 1; 
      while (j > i) {
        paramObject2 = this.navigator.getParentNode(paramObject2);
        j--;
      } 
      if (paramObject2 == unsupportedAxisException)
        return -1; 
      Object object1 = paramObject2;
      while (true) {
        paramObject2 = this.navigator.getParentNode(object2);
        Object object = this.navigator.getParentNode(object1);
        if (paramObject2 == object)
          return compareSiblings(object2, object1); 
        object1 = object;
        object2 = paramObject2;
      } 
    } 
    return 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\NodeComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */