package org.jaxen.xom;

import nu.xom.Element;

class DocumentNavigator$1 extends DocumentNavigator$IndexIterator {
  private final DocumentNavigator this$0;
  
  DocumentNavigator$1(DocumentNavigator paramDocumentNavigator, Object paramObject, int paramInt1, int paramInt2) {
    super(paramObject, paramInt1, paramInt2);
    this.this$0 = paramDocumentNavigator;
  }
  
  public Object get(Object paramObject, int paramInt) {
    return ((Element)paramObject).getAttribute(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\xom\DocumentNavigator$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */