.class public Lorg/dom4j/tree/DefaultElement;
.super Lorg/dom4j/tree/AbstractElement;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final transient DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;


# instance fields
.field private final attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation
.end field

.field private parentBranch:Lorg/dom4j/Branch;

.field private qname:Lorg/dom4j/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/dom4j/tree/DefaultElement;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/dom4j/tree/DefaultElement;->$assertionsDisabled:Z

    .line 28
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    sput-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;I)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 46
    new-instance v0, Lorg/dom4j/tree/LazyList;

    invoke-direct {v0}, Lorg/dom4j/tree/LazyList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    .line 62
    new-instance v0, Lorg/dom4j/tree/LazyList;

    invoke-direct {v0}, Lorg/dom4j/tree/LazyList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/util/List;

    .line 63
    return-void
.end method


# virtual methods
.method public add(Lorg/dom4j/Attribute;)V
    .locals 2

    .prologue
    .line 458
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Attribute already has an existing parent \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getParent()Lorg/dom4j/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    new-instance v1, Lorg/dom4j/IllegalAddException;

    invoke-direct {v1, p0, p1, v0}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v1

    .line 464
    :cond_0
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 468
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->remove(Lorg/dom4j/Attribute;)Z

    .line 479
    :cond_1
    :goto_0
    return-void

    .line 475
    :cond_2
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    goto :goto_0
.end method

.method protected addNewNode(Lorg/dom4j/Node;)V
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    .line 505
    return-void
.end method

.method public additionalNamespaces()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Namespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 239
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

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

    .line 240
    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsNamespace(Lorg/dom4j/Node;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 242
    invoke-virtual {v1, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 245
    :cond_1
    return-object v1
.end method

.method public additionalNamespaces(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Namespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 251
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

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

    .line 252
    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsNamespace(Lorg/dom4j/Node;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    invoke-virtual {v1, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 257
    :cond_1
    return-object v1
.end method

.method public attribute(I)Lorg/dom4j/Attribute;
    .locals 1

    .prologue
    .line 418
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 419
    :cond_0
    const/4 v0, 0x0

    .line 421
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    goto :goto_0
.end method

.method public attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 3

    .prologue
    .line 431
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    .line 432
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public attribute(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/Attribute;
    .locals 1

    .prologue
    .line 453
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;
    .locals 3

    .prologue
    .line 442
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    .line 443
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public attributeCount()I
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public attributeIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public attributeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    sget-boolean v0, Lorg/dom4j/tree/DefaultElement;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 536
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/util/List;

    return-object v0
.end method

.method protected attributeList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 543
    sget-boolean v0, Lorg/dom4j/tree/DefaultElement;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 544
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public attributes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    new-instance v0, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/ContentListFacade;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V

    return-object v0
.end method

.method public clearContent()V
    .locals 1

    .prologue
    .line 367
    sget-boolean v0, Lorg/dom4j/tree/DefaultElement;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 368
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentRemoved()V

    .line 369
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 370
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->clone()Lorg/dom4j/tree/DefaultElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/dom4j/tree/AbstractNode;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->clone()Lorg/dom4j/tree/DefaultElement;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/dom4j/tree/DefaultElement;
    .locals 3

    .prologue
    .line 147
    invoke-super {p0}, Lorg/dom4j/tree/AbstractElement;->clone()Lorg/dom4j/tree/AbstractNode;

    move-result-object v0

    check-cast v0, Lorg/dom4j/tree/DefaultElement;

    .line 149
    if-eq v0, p0, :cond_0

    .line 150
    const-class v1, Lorg/dom4j/tree/DefaultElement;

    const-string v2, "attributes"

    invoke-static {v1, v0, v2}, Lorg/dom4j/tree/CloneHelper;->setFinalLazyList(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    const-class v1, Lorg/dom4j/tree/DefaultElement;

    invoke-static {v1, v0}, Lorg/dom4j/tree/CloneHelper;->setFinalContent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 152
    invoke-virtual {v0, p0}, Lorg/dom4j/tree/DefaultElement;->appendAttributes(Lorg/dom4j/Element;)V

    .line 153
    invoke-virtual {v0, p0}, Lorg/dom4j/tree/DefaultElement;->appendContent(Lorg/dom4j/Branch;)V

    .line 156
    :cond_0
    return-object v0
.end method

.method public contentList()Ljava/util/List;
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
    .line 518
    sget-boolean v0, Lorg/dom4j/tree/DefaultElement;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 519
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/util/List;

    return-object v0
.end method

.method public declaredNamespaces()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Namespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 224
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/util/List;

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

    .line 226
    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsNamespace(Lorg/dom4j/Node;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v1, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 233
    :cond_1
    return-object v1
.end method

.method public element(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 3

    .prologue
    .line 314
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

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

    .line 315
    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsElement(Lorg/dom4j/Node;)Lorg/dom4j/Element;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public element(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public element(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 3

    .prologue
    .line 326
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

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

    .line 327
    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsElement(Lorg/dom4j/Node;)Lorg/dom4j/Element;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDocument()Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Document;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Document;

    .line 97
    :goto_0
    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Element;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Element;

    .line 94
    invoke-interface {v0}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    invoke-virtual {v0}, Lorg/dom4j/QName;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    goto :goto_0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 3

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    const-string p1, ""

    .line 165
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    .line 193
    :cond_1
    :goto_0
    return-object v0

    .line 167
    :cond_2
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    sget-object v0, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 172
    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsNamespace(Lorg/dom4j/Node;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 179
    :cond_5
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_6

    .line 182
    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 184
    if-nez v0, :cond_1

    .line 189
    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_8

    .line 190
    :cond_7
    sget-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    goto :goto_0

    .line 193
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 3

    .prologue
    .line 198
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 199
    :cond_0
    sget-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    .line 216
    :goto_0
    return-object v0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 205
    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsNamespace(Lorg/dom4j/Node;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 211
    :cond_4
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_5

    .line 213
    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParent()Lorg/dom4j/Element;
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 73
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v1, v1, Lorg/dom4j/Element;

    if-eqz v1, :cond_0

    .line 74
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Element;

    .line 77
    :cond_0
    return-object v0
.end method

.method public getQName()Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const-string v0, ""

    .line 142
    :goto_0
    return-object v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 127
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->getContentAsStringValue(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 132
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->getContentAsStringValue(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 142
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public indexOf(Lorg/dom4j/Node;)I
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public node(I)Lorg/dom4j/Node;
    .locals 1

    .prologue
    .line 374
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 375
    :cond_0
    const/4 v0, 0x0

    .line 377
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    goto :goto_0
.end method

.method public nodeCount()I
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public nodeIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .locals 3

    .prologue
    .line 289
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

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

    .line 290
    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsProcessingInstruction(Lorg/dom4j/Node;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
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
    .line 264
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 265
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

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

    .line 266
    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsProcessingInstruction(Lorg/dom4j/Node;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v1, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 272
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
    .line 277
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 278
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

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

    .line 279
    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsProcessingInstruction(Lorg/dom4j/Node;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    invoke-virtual {v1, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 284
    :cond_1
    return-object v1
.end method

.method public remove(Lorg/dom4j/Attribute;)Z
    .locals 2

    .prologue
    .line 483
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 485
    if-nez v0, :cond_0

    .line 487
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/DefaultElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v1

    .line 489
    if-eqz v1, :cond_0

    .line 490
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 494
    :cond_0
    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childRemoved(Lorg/dom4j/Node;)V

    .line 498
    :cond_1
    return v0
.end method

.method public removeNode(Lorg/dom4j/Node;)Z
    .locals 1

    .prologue
    .line 509
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 510
    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childRemoved(Lorg/dom4j/Node;)V

    .line 514
    :cond_0
    return v0
.end method

.method public removeProcessingInstruction(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsProcessingInstruction(Lorg/dom4j/Node;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 305
    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttributeList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Attribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 523
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 524
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 525
    return-void
.end method

.method public setAttributes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Attribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    instance-of v0, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v0, :cond_0

    .line 402
    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object p1

    .line 405
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 406
    if-eqz p1, :cond_1

    .line 407
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 409
    :cond_1
    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .locals 4
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
    .line 342
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentRemoved()V

    .line 344
    instance-of v0, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v0, :cond_0

    .line 345
    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object p1

    .line 348
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createContentList()Ljava/util/List;

    move-result-object v1

    .line 350
    if-eqz p1, :cond_2

    .line 351
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 352
    invoke-interface {v0}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v3

    .line 354
    if-eqz v3, :cond_1

    if-eq v3, p0, :cond_1

    .line 355
    invoke-interface {v0}, Lorg/dom4j/Node;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 358
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 363
    :cond_2
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/util/List;

    .line 364
    return-void
.end method

.method public setDocument(Lorg/dom4j/Document;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Document;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 103
    :cond_0
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    .line 105
    :cond_1
    return-void
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Element;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 83
    :cond_0
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    .line 85
    :cond_1
    return-void
.end method

.method public setQName(Lorg/dom4j/QName;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    .line 118
    return-void
.end method

.method public supportsParent()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method
