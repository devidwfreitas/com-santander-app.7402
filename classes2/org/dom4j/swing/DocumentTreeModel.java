package org.dom4j.swing;

import javax.swing.tree.DefaultTreeModel;
import org.dom4j.Branch;
import org.dom4j.Document;

public class DocumentTreeModel extends DefaultTreeModel {
  protected Document document;
  
  public DocumentTreeModel(Document paramDocument) {
    super(new BranchTreeNode((Branch)paramDocument));
    this.document = paramDocument;
  }
  
  public Document getDocument() {
    return this.document;
  }
  
  public void setDocument(Document paramDocument) {
    this.document = paramDocument;
    setRoot(new BranchTreeNode((Branch)paramDocument));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\swing\DocumentTreeModel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */