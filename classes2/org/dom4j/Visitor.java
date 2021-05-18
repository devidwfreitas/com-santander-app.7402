package org.dom4j;

public interface Visitor {
  void visit(Attribute paramAttribute);
  
  void visit(CDATA paramCDATA);
  
  void visit(Comment paramComment);
  
  void visit(Document paramDocument);
  
  void visit(DocumentType paramDocumentType);
  
  void visit(Element paramElement);
  
  void visit(Entity paramEntity);
  
  void visit(Namespace paramNamespace);
  
  void visit(ProcessingInstruction paramProcessingInstruction);
  
  void visit(Text paramText);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\Visitor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */