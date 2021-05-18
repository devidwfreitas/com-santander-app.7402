package org.dom4j.tree;

import org.dom4j.CharacterData;
import org.dom4j.Element;

public abstract class AbstractCharacterData extends AbstractNode implements CharacterData {
  public void appendText(String paramString) {
    setText(getText() + paramString);
  }
  
  public String getPath(Element paramElement) {
    Element element = getParent();
    return (element != null && element != paramElement) ? (element.getPath(paramElement) + "/text()") : "text()";
  }
  
  public String getUniquePath(Element paramElement) {
    Element element = getParent();
    return (element != null && element != paramElement) ? (element.getUniquePath(paramElement) + "/text()") : "text()";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\AbstractCharacterData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */