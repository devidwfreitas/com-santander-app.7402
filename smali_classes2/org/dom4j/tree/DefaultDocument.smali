.class public Lorg/dom4j/tree/DefaultDocument;
.super Lorg/dom4j/tree/AbstractDocument;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation
.end field

.field private docType:Lorg/dom4j/DocumentType;

.field private documentFactory:Lorg/dom4j/DocumentFactory;

.field private transient entityResolver:Lorg/xml/sax/EntityResolver;

.field private name:Ljava/lang/String;

.field private rootElement:Lorg/dom4j/Element;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/dom4j/tree/DefaultDocument;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/dom4j/tree/DefaultDocument;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0, v0, v0}, Lorg/dom4j/tree/DefaultDocument;-><init>(Ljava/lang/String;Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0, v0}, Lorg/dom4j/tree/DefaultDocument;-><init>(Ljava/lang/String;Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    .line 37
    new-instance v0, Lorg/dom4j/tree/LazyList;

    invoke-direct {v0}, Lorg/dom4j/tree/LazyList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    .line 45
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 72
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->name:Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p2}, Lorg/dom4j/tree/DefaultDocument;->setRootElement(Lorg/dom4j/Element;)V

    .line 74
    iput-object p3, p0, Lorg/dom4j/tree/DefaultDocument;->docType:Lorg/dom4j/DocumentType;

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentType;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0, v0, p1}, Lorg/dom4j/tree/DefaultDocument;-><init>(Ljava/lang/String;Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0, p1, v0}, Lorg/dom4j/tree/DefaultDocument;-><init>(Ljava/lang/String;Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/dom4j/tree/DefaultDocument;-><init>(Ljava/lang/String;Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V

    .line 69
    return-void
.end method


# virtual methods
.method public addDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/DocumentFactory;->createDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/DocumentType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultDocument;->setDocType(Lorg/dom4j/DocumentType;)V

    .line 102
    return-object p0
.end method

.method protected addNode(ILorg/dom4j/Node;)V
    .locals 3

    .prologue
    .line 242
    if-eqz p2, :cond_1

    .line 243
    invoke-interface {p2}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Node already has an existing document: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v1, Lorg/dom4j/IllegalAddException;

    invoke-direct {v1, p0, p2, v0}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 252
    invoke-virtual {p0, p2}, Lorg/dom4j/tree/DefaultDocument;->childAdded(Lorg/dom4j/Node;)V

    .line 254
    :cond_1
    return-void
.end method

.method protected addNode(Lorg/dom4j/Node;)V
    .locals 3

    .prologue
    .line 227
    if-eqz p1, :cond_1

    .line 228
    invoke-interface {p1}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Node already has an existing document: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Lorg/dom4j/IllegalAddException;

    invoke-direct {v1, p0, p1, v0}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultDocument;->childAdded(Lorg/dom4j/Node;)V

    .line 239
    :cond_1
    return-void
.end method

.method public clearContent()V
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentRemoved()V

    .line 213
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 215
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->clone()Lorg/dom4j/tree/DefaultDocument;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/dom4j/tree/AbstractNode;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->clone()Lorg/dom4j/tree/DefaultDocument;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/dom4j/tree/DefaultDocument;
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lorg/dom4j/tree/AbstractDocument;->clone()Lorg/dom4j/tree/AbstractNode;

    move-result-object v0

    check-cast v0, Lorg/dom4j/tree/DefaultDocument;

    .line 121
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 122
    const-class v1, Lorg/dom4j/tree/DefaultDocument;

    invoke-static {v1, v0}, Lorg/dom4j/tree/CloneHelper;->setFinalContent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v0, p0}, Lorg/dom4j/tree/DefaultDocument;->appendContent(Lorg/dom4j/Branch;)V

    .line 125
    return-object v0
.end method

.method protected contentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    sget-boolean v0, Lorg/dom4j/tree/DefaultDocument;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    return-object v0
.end method

.method public getDocType()Lorg/dom4j/DocumentType;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->docType:Lorg/dom4j/DocumentType;

    return-object v0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRootElement()Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    return-object v0
.end method

.method public getXMLEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 154
    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsProcessingInstruction(Lorg/dom4j/Node;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processingInstructions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/ProcessingInstruction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 130
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 131
    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsProcessingInstruction(Lorg/dom4j/Node;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_1
    return-object v1
.end method

.method public processingInstructions(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/ProcessingInstruction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 142
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 143
    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsProcessingInstruction(Lorg/dom4j/Node;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_1
    return-object v1
.end method

.method protected removeNode(Lorg/dom4j/Node;)Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    if-ne p1, v0, :cond_0

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 261
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultDocument;->childRemoved(Lorg/dom4j/Node;)V

    .line 263
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeProcessingInstruction(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 166
    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsProcessingInstruction(Lorg/dom4j/Node;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 169
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected rootElementAdded(Lorg/dom4j/Element;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 271
    invoke-interface {p1, p0}, Lorg/dom4j/Element;->setDocument(Lorg/dom4j/Document;)V

    .line 272
    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 178
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentRemoved()V

    .line 180
    instance-of v0, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v0, :cond_0

    .line 181
    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object p1

    .line 184
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    if-nez p1, :cond_1

    .line 209
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->createContentList()Ljava/util/List;

    move-result-object v1

    .line 190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 191
    invoke-interface {v0}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v3

    .line 192
    if-eqz v3, :cond_2

    if-eq v3, p0, :cond_2

    .line 193
    invoke-interface {v0}, Lorg/dom4j/Node;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 196
    :cond_2
    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsElement(Lorg/dom4j/Node;)Lorg/dom4j/Element;

    move-result-object v3

    .line 197
    if-eqz v3, :cond_3

    .line 198
    iget-object v4, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    if-nez v4, :cond_4

    .line 199
    iput-object v3, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 205
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultDocument;->childAdded(Lorg/dom4j/Node;)V

    goto :goto_1

    .line 201
    :cond_4
    new-instance v0, Lorg/dom4j/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A document may only contain one root element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/dom4j/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_5
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setDocType(Lorg/dom4j/DocumentType;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->docType:Lorg/dom4j/DocumentType;

    .line 97
    return-void
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 219
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 116
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->name:Ljava/lang/String;

    .line 85
    return-void
.end method
