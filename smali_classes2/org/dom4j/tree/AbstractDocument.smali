.class public abstract Lorg/dom4j/tree/AbstractDocument;
.super Lorg/dom4j/tree/AbstractBranch;
.source "SourceFile"

# interfaces
.implements Lorg/dom4j/Document;


# instance fields
.field protected encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractBranch;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public accept(Lorg/dom4j/Visitor;)V
    .locals 3

    .prologue
    .line 105
    invoke-interface {p1, p0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Document;)V

    .line 107
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-interface {p1, v0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/DocumentType;)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->content()Ljava/util/List;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_2

    .line 117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 120
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 121
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v0

    .line 123
    invoke-interface {p1, v0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Text;)V

    goto :goto_0

    .line 125
    :cond_1
    check-cast v0, Lorg/dom4j/Node;

    .line 126
    invoke-interface {v0, p1}, Lorg/dom4j/Node;->accept(Lorg/dom4j/Visitor;)V

    goto :goto_0

    .line 130
    :cond_2
    return-void
.end method

.method public add(Lorg/dom4j/Element;)V
    .locals 0

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocument;->checkAddElementAllowed(Lorg/dom4j/Element;)V

    .line 208
    invoke-super {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    .line 209
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocument;->rootElementAdded(Lorg/dom4j/Element;)V

    .line 210
    return-void
.end method

.method public addComment(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createComment(Ljava/lang/String;)Lorg/dom4j/Comment;

    move-result-object v0

    .line 150
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/Comment;)V

    .line 152
    return-object p0
.end method

.method public addElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 174
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/Element;)V

    .line 176
    return-object v0
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 183
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/Element;)V

    .line 185
    return-object v0
.end method

.method public addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 191
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/Element;)V

    .line 193
    return-object v0
.end method

.method public addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    .line 158
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/ProcessingInstruction;)V

    .line 160
    return-object p0
.end method

.method public addProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    .line 166
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/ProcessingInstruction;)V

    .line 168
    return-object p0
.end method

.method public asXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    .line 72
    iget-object v1, p0, Lorg/dom4j/tree/AbstractDocument;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 75
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 76
    new-instance v2, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v2, v1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 77
    invoke-virtual {v2, p0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 78
    invoke-virtual {v2}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 80
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while generating textual representation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public asXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
    .locals 0

    .prologue
    .line 228
    return-object p0
.end method

.method protected checkAddElementAllowed(Lorg/dom4j/Element;)V
    .locals 4

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    .line 247
    new-instance v1, Lorg/dom4j/IllegalAddException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot add another element to this Document as it already has a root element of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_0
    return-void
.end method

.method protected childAdded(Lorg/dom4j/Node;)V
    .locals 0

    .prologue
    .line 232
    if-eqz p1, :cond_0

    .line 233
    invoke-interface {p1, p0}, Lorg/dom4j/Node;->setDocument(Lorg/dom4j/Document;)V

    .line 235
    :cond_0
    return-void
.end method

.method protected childRemoved(Lorg/dom4j/Node;)V
    .locals 1

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 239
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/dom4j/Node;->setDocument(Lorg/dom4j/Document;)V

    .line 241
    :cond_0
    return-void
.end method

.method public getDocument()Lorg/dom4j/Document;
    .locals 0

    .prologue
    .line 56
    return-object p0
.end method

.method public getNodeTypeEnum()Lorg/dom4j/NodeType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/dom4j/NodeType;->DOCUMENT_NODE:Lorg/dom4j/NodeType;

    return-object v0
.end method

.method public getPath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "/"

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Element;->getStringValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "/"

    return-object v0
.end method

.method public getXMLEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public normalize()V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Lorg/dom4j/Element;->normalize()V

    .line 146
    :cond_0
    return-void
.end method

.method public remove(Lorg/dom4j/Element;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    invoke-super {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->remove(Lorg/dom4j/Element;)Z

    move-result v0

    .line 215
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/AbstractDocument;->setRootElement(Lorg/dom4j/Element;)V

    .line 221
    :cond_0
    invoke-interface {p1, v2}, Lorg/dom4j/Element;->setDocument(Lorg/dom4j/Document;)V

    .line 223
    return v0
.end method

.method protected abstract rootElementAdded(Lorg/dom4j/Element;)V
.end method

.method public setRootElement(Lorg/dom4j/Element;)V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->clearContent()V

    .line 199
    if-eqz p1, :cond_0

    .line 200
    invoke-super {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    .line 201
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocument;->rootElementAdded(Lorg/dom4j/Element;)V

    .line 203
    :cond_0
    return-void
.end method

.method public setXMLEncoding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lorg/dom4j/tree/AbstractDocument;->encoding:Ljava/lang/String;

    .line 263
    return-void
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->toString(Ljava/lang/StringBuilder;)V

    .line 135
    const-string v0, " [Document: name "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    return-void
.end method

.method public write(Ljava/io/Writer;)V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    .line 90
    iget-object v1, p0, Lorg/dom4j/tree/AbstractDocument;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 92
    new-instance v1, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v1, p1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 93
    invoke-virtual {v1, p0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 94
    return-void
.end method
