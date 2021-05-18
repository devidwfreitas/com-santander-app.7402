package org.dom4j.dom;

import java.util.List;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

final class DOMNodeHelper$1 implements NodeList {
  public int getLength() {
    return list.size();
  }
  
  public Node item(int paramInt) {
    return (paramInt >= getLength()) ? null : DOMNodeHelper.asDOMNode(list.get(paramInt));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\dom\DOMNodeHelper$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */