.class public Lorg/dom4j/tree/BaseElement;
.super Lorg/dom4j/tree/AbstractElement;
.source "SourceFile"


# instance fields
.field public attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public content:Ljava/util/List;
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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 48
    invoke-virtual {p0}, Lorg/dom4j/tree/BaseElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/BaseElement;->qname:Lorg/dom4j/QName;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 56
    invoke-virtual {p0}, Lorg/dom4j/tree/BaseElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/BaseElement;->qname:Lorg/dom4j/QName;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->qname:Lorg/dom4j/QName;

    .line 53
    return-void
.end method


# virtual methods
.method protected attributeList()Ljava/util/List;
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
    .line 142
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lorg/dom4j/tree/BaseElement;->createAttributeList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

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

    .prologue
    .line 150
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BaseElement;->createAttributeList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public clearContent()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/dom4j/tree/BaseElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    return-void
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
    .line 134
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->content:Ljava/util/List;

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lorg/dom4j/tree/BaseElement;->createContentList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/BaseElement;->content:Ljava/util/List;

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->content:Ljava/util/List;

    return-object v0
.end method

.method public getDocument()Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Document;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Document;

    .line 87
    :goto_0
    return-object v0

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Element;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Element;

    .line 84
    invoke-interface {v0}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParent()Lorg/dom4j/Element;
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v1, v1, Lorg/dom4j/Element;

    if-eqz v1, :cond_0

    .line 64
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Element;

    .line 67
    :cond_0
    return-object v0
.end method

.method public getQName()Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->qname:Lorg/dom4j/QName;

    return-object v0
.end method

.method protected setAttributeList(Ljava/util/List;)V
    .locals 0
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
    .line 158
    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    .line 159
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
    .line 123
    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    .line 125
    instance-of v0, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v0, :cond_0

    .line 126
    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    .line 128
    :cond_0
    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .locals 1
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
    .line 115
    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->content:Ljava/util/List;

    .line 117
    instance-of v0, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v0, :cond_0

    .line 118
    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/BaseElement;->content:Ljava/util/List;

    .line 120
    :cond_0
    return-void
.end method

.method public setDocument(Lorg/dom4j/Document;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Document;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 93
    :cond_0
    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    .line 95
    :cond_1
    return-void
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Element;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 73
    :cond_0
    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    .line 75
    :cond_1
    return-void
.end method

.method public setQName(Lorg/dom4j/QName;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->qname:Lorg/dom4j/QName;

    .line 108
    return-void
.end method

.method public supportsParent()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method
