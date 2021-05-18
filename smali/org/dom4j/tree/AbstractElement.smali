.class public abstract Lorg/dom4j/tree/AbstractElement;
.super Lorg/dom4j/tree/AbstractBranch;
.source "SourceFile"

# interfaces
.implements Lorg/dom4j/Element;


# static fields
.field private static final DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

.field protected static final USE_STRINGVALUE_SEPARATOR:Z

.field protected static final VERBOSE_TOSTRING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    sput-object v0, Lorg/dom4j/tree/AbstractElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractBranch;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public accept(Lorg/dom4j/Visitor;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-interface {p1, p0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Element;)V

    .line 178
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 179
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractElement;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v3

    .line 181
    invoke-interface {p1, v3}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Attribute;)V

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->nodeCount()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 186
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->node(I)Lorg/dom4j/Node;

    move-result-object v2

    .line 188
    invoke-interface {v2, p1}, Lorg/dom4j/Node;->accept(Lorg/dom4j/Visitor;)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    :cond_1
    return-void
.end method

.method public add(Lorg/dom4j/Attribute;)V
    .locals 2

    .prologue
    .line 479
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
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

    .line 482
    new-instance v1, Lorg/dom4j/IllegalAddException;

    invoke-direct {v1, p0, p1, v0}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v1

    .line 485
    :cond_0
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 489
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Attribute;)Z

    .line 499
    :cond_1
    :goto_0
    return-void

    .line 495
    :cond_2
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->childAdded(Lorg/dom4j/Node;)V

    goto :goto_0
.end method

.method public add(Lorg/dom4j/CDATA;)V
    .locals 0

    .prologue
    .line 849
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    .line 850
    return-void
.end method

.method public add(Lorg/dom4j/Comment;)V
    .locals 0

    .prologue
    .line 854
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    .line 855
    return-void
.end method

.method public add(Lorg/dom4j/Element;)V
    .locals 0

    .prologue
    .line 859
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    .line 860
    return-void
.end method

.method public add(Lorg/dom4j/Entity;)V
    .locals 0

    .prologue
    .line 863
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    .line 864
    return-void
.end method

.method public add(Lorg/dom4j/Namespace;)V
    .locals 0

    .prologue
    .line 867
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    .line 868
    return-void
.end method

.method public add(Lorg/dom4j/Node;)V
    .locals 2

    .prologue
    .line 761
    sget-object v0, Lorg/dom4j/tree/AbstractElement$1;->$SwitchMap$org$dom4j$NodeType:[I

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/dom4j/NodeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 807
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->invalidNodeTypeAddException(Lorg/dom4j/Node;)V

    .line 809
    :goto_0
    return-void

    .line 763
    :pswitch_0
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Element;)V

    goto :goto_0

    .line 768
    :pswitch_1
    check-cast p1, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    goto :goto_0

    .line 773
    :pswitch_2
    check-cast p1, Lorg/dom4j/Text;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Text;)V

    goto :goto_0

    .line 778
    :pswitch_3
    check-cast p1, Lorg/dom4j/CDATA;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/CDATA;)V

    goto :goto_0

    .line 783
    :pswitch_4
    check-cast p1, Lorg/dom4j/Entity;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Entity;)V

    goto :goto_0

    .line 788
    :pswitch_5
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_0

    .line 793
    :pswitch_6
    check-cast p1, Lorg/dom4j/Comment;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Comment;)V

    goto :goto_0

    .line 802
    :pswitch_7
    check-cast p1, Lorg/dom4j/Namespace;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Namespace;)V

    goto :goto_0

    .line 761
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public add(Lorg/dom4j/ProcessingInstruction;)V
    .locals 0

    .prologue
    .line 872
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    .line 873
    return-void
.end method

.method public add(Lorg/dom4j/Text;)V
    .locals 0

    .prologue
    .line 876
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    .line 877
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 2

    .prologue
    .line 620
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 622
    if-eqz p2, :cond_3

    .line 623
    if-nez v0, :cond_1

    .line 624
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    .line 636
    :cond_0
    :goto_0
    return-object p0

    .line 625
    :cond_1
    invoke-interface {v0}, Lorg/dom4j/Attribute;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 626
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Attribute;)Z

    .line 628
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    goto :goto_0

    .line 630
    :cond_2
    invoke-interface {v0, p2}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_3
    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Attribute;)Z

    goto :goto_0
.end method

.method public addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 2

    .prologue
    .line 641
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 643
    if-eqz p2, :cond_3

    .line 644
    if-nez v0, :cond_1

    .line 645
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    .line 657
    :cond_0
    :goto_0
    return-object p0

    .line 646
    :cond_1
    invoke-interface {v0}, Lorg/dom4j/Attribute;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 647
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Attribute;)Z

    .line 649
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    goto :goto_0

    .line 651
    :cond_2
    invoke-interface {v0, p2}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_3
    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Attribute;)Z

    goto :goto_0
.end method

.method public addCDATA(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 661
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;

    move-result-object v0

    .line 663
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    .line 665
    return-object p0
.end method

.method public addComment(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 669
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createComment(Ljava/lang/String;)Lorg/dom4j/Comment;

    move-result-object v0

    .line 671
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    .line 673
    return-object p0
.end method

.method public addElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 4

    .prologue
    .line 678
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v2

    .line 680
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 682
    const-string v1, ""

    .line 688
    if-lez v0, :cond_0

    .line 689
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 691
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 693
    invoke-virtual {p0, v3}, Lorg/dom4j/tree/AbstractElement;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 695
    if-nez v0, :cond_1

    .line 696
    new-instance v0, Lorg/dom4j/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such namespace prefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is in scope on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so cannot add element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/dom4j/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    move-object v1, p1

    .line 704
    :cond_1
    if-eqz v0, :cond_2

    .line 705
    invoke-virtual {v2, v1, v0}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    .line 707
    invoke-virtual {v2, v0}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 712
    :goto_0
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    .line 714
    return-object v0

    .line 709
    :cond_2
    invoke-virtual {v2, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    goto :goto_0
.end method

.method public addEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;

    move-result-object v0

    .line 720
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    .line 722
    return-object p0
.end method

.method public addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 726
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 728
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    .line 730
    return-object p0
.end method

.method protected addNewNode(ILorg/dom4j/Node;)V
    .locals 1

    .prologue
    .line 1412
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1414
    invoke-virtual {p0, p2}, Lorg/dom4j/tree/AbstractElement;->childAdded(Lorg/dom4j/Node;)V

    .line 1415
    return-void
.end method

.method protected addNewNode(Lorg/dom4j/Node;)V
    .locals 1

    .prologue
    .line 1406
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1408
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->childAdded(Lorg/dom4j/Node;)V

    .line 1409
    return-void
.end method

.method protected addNode(ILorg/dom4j/Node;)V
    .locals 2

    .prologue
    .line 1390
    invoke-interface {p2}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Node already has an existing parent of \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

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

    .line 1394
    new-instance v1, Lorg/dom4j/IllegalAddException;

    invoke-direct {v1, p0, p2, v0}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v1

    .line 1397
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/AbstractElement;->addNewNode(ILorg/dom4j/Node;)V

    .line 1398
    return-void
.end method

.method public addNode(Lorg/dom4j/Node;)V
    .locals 2

    .prologue
    .line 1379
    invoke-interface {p1}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Node already has an existing parent of \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

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

    .line 1383
    new-instance v1, Lorg/dom4j/IllegalAddException;

    invoke-direct {v1, p0, p1, v0}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v1

    .line 1386
    :cond_0
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    .line 1387
    return-void
.end method

.method public addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 734
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    .line 736
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    .line 738
    return-object p0
.end method

.method public addProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    .line 744
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    .line 746
    return-object p0
.end method

.method public addText(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 750
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v0

    .line 752
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    .line 754
    return-object p0
.end method

.method public additionalNamespaces()Ljava/util/List;
    .locals 6
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
    .line 1304
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    .line 1306
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1308
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v4

    .line 1310
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 1311
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 1313
    instance-of v5, v0, Lorg/dom4j/Namespace;

    if-eqz v5, :cond_0

    .line 1314
    check-cast v0, Lorg/dom4j/Namespace;

    .line 1316
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1317
    invoke-virtual {v4, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    .line 1310
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1322
    :cond_1
    return-object v4
.end method

.method public additionalNamespaces(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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
    .line 1326
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    .line 1328
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v3

    .line 1330
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 1332
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 1333
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 1335
    instance-of v5, v0, Lorg/dom4j/Namespace;

    if-eqz v5, :cond_0

    .line 1336
    check-cast v0, Lorg/dom4j/Namespace;

    .line 1338
    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1339
    invoke-virtual {v3, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    .line 1332
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1344
    :cond_1
    return-object v3
.end method

.method public appendAttributes(Lorg/dom4j/Element;)V
    .locals 4

    .prologue
    .line 1110
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1111
    invoke-interface {p1, v0}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v2

    .line 1113
    invoke-interface {v2}, Lorg/dom4j/Attribute;->supportsParent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1114
    invoke-interface {v2}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v3

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lorg/dom4j/tree/AbstractElement;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 1110
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1116
    :cond_0
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    goto :goto_1

    .line 1119
    :cond_1
    return-void
.end method

.method public asXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 149
    new-instance v1, Lorg/dom4j/io/XMLWriter;

    new-instance v2, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v2}, Lorg/dom4j/io/OutputFormat;-><init>()V

    invoke-direct {v1, v0, v2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 151
    invoke-virtual {v1, p0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Element;)V

    .line 152
    invoke-virtual {v1}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 154
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 155
    :catch_0
    move-exception v0

    .line 156
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

.method public attribute(I)Lorg/dom4j/Attribute;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    return-object v0
.end method

.method public attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 3

    .prologue
    .line 374
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

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

    .line 375
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public attribute(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/Attribute;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;
    .locals 3

    .prologue
    .line 384
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

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

    .line 385
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public attributeCount()I
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

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
    .line 362
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract attributeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract attributeList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation
.end method

.method public attributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 463
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/dom4j/NodeHelper;->getAttributeValue(Lorg/dom4j/Attribute;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public attributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/dom4j/NodeHelper;->getAttributeValue(Lorg/dom4j/Attribute;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public attributeValue(Lorg/dom4j/QName;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 467
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/dom4j/NodeHelper;->getAttributeValue(Lorg/dom4j/Attribute;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public attributeValue(Lorg/dom4j/QName;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/dom4j/NodeHelper;->getAttributeValue(Lorg/dom4j/Attribute;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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
    .line 358
    new-instance v0, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/ContentListFacade;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V

    return-object v0
.end method

.method public childAdded(Lorg/dom4j/Node;)V
    .locals 0

    .prologue
    .line 1433
    if-eqz p1, :cond_0

    .line 1434
    invoke-interface {p1, p0}, Lorg/dom4j/Node;->setParent(Lorg/dom4j/Element;)V

    .line 1436
    :cond_0
    return-void
.end method

.method public childRemoved(Lorg/dom4j/Node;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1439
    if-eqz p1, :cond_0

    .line 1440
    invoke-interface {p1, v0}, Lorg/dom4j/Node;->setParent(Lorg/dom4j/Element;)V

    .line 1442
    invoke-interface {p1, v0}, Lorg/dom4j/Node;->setDocument(Lorg/dom4j/Document;)V

    .line 1444
    :cond_0
    return-void
.end method

.method public createAttributeList()Ljava/util/List;
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
    .line 1486
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->createAttributeList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createAttributeList(I)Ljava/util/List;
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
    .line 1497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public createCopy()Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 1135
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 1137
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->appendAttributes(Lorg/dom4j/Element;)V

    .line 1139
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->appendContent(Lorg/dom4j/Branch;)V

    .line 1141
    return-object v0
.end method

.method public createCopy(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 1145
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 1147
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->appendAttributes(Lorg/dom4j/Element;)V

    .line 1149
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->appendContent(Lorg/dom4j/Branch;)V

    .line 1151
    return-object v0
.end method

.method public createCopy(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 1155
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 1157
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->appendAttributes(Lorg/dom4j/Element;)V

    .line 1159
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->appendContent(Lorg/dom4j/Branch;)V

    .line 1161
    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 1371
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 1375
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method protected createSingleIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1502
    new-instance v0, Lorg/dom4j/tree/SingleIterator;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/SingleIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public declaredNamespaces()Ljava/util/List;
    .locals 6
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
    .line 1280
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v2

    .line 1288
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v3

    .line 1290
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1292
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 1293
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 1295
    instance-of v5, v0, Lorg/dom4j/Namespace;

    if-eqz v5, :cond_0

    .line 1296
    check-cast v0, Lorg/dom4j/Namespace;

    invoke-virtual {v2, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    .line 1292
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1300
    :cond_1
    return-object v2
.end method

.method public element(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 3

    .prologue
    .line 281
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

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

    .line 282
    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsElement(Lorg/dom4j/Node;)Lorg/dom4j/Element;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public element(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public element(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 3

    .prologue
    .line 293
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

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

    .line 294
    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsElement(Lorg/dom4j/Node;)Lorg/dom4j/Element;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public elementIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/dom4j/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->elements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public elementIterator(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lorg/dom4j/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->elements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public elementIterator(Ljava/lang/String;Lorg/dom4j/Namespace;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/dom4j/Namespace;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lorg/dom4j/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->elementIterator(Lorg/dom4j/QName;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public elementIterator(Lorg/dom4j/QName;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/QName;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lorg/dom4j/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->elements(Lorg/dom4j/QName;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public elementText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1083
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 1085
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public elementText(Lorg/dom4j/QName;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1089
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 1091
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public elementTextTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1095
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 1097
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public elementTextTrim(Lorg/dom4j/QName;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1101
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 1103
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public elements()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 309
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 310
    invoke-static {v0, v1}, Lorg/dom4j/NodeHelper;->appendElementLocal(Lorg/dom4j/Node;Lorg/dom4j/tree/BackedList;)Lorg/dom4j/tree/BackedList;

    goto :goto_0

    .line 313
    :cond_0
    return-object v1
.end method

.method public elements(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 318
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 319
    invoke-static {v0, v1, p1}, Lorg/dom4j/NodeHelper;->appendElementNamedLocal(Lorg/dom4j/Node;Lorg/dom4j/tree/BackedList;Ljava/lang/String;)Lorg/dom4j/tree/BackedList;

    goto :goto_0

    .line 322
    :cond_0
    return-object v1
.end method

.method public elements(Ljava/lang/String;Lorg/dom4j/Namespace;)Ljava/util/List;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->elements(Lorg/dom4j/QName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public elements(Lorg/dom4j/QName;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/QName;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 327
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 328
    invoke-static {v0, v1, p1}, Lorg/dom4j/NodeHelper;->appendElementQNamedLocal(Lorg/dom4j/Node;Lorg/dom4j/tree/BackedList;Lorg/dom4j/QName;)Lorg/dom4j/tree/BackedList;

    goto :goto_0

    .line 331
    :cond_0
    return-object v1
.end method

.method public ensureAttributesCapacity(I)V
    .locals 2

    .prologue
    .line 1356
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 1357
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v0

    .line 1359
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1360
    check-cast v0, Ljava/util/ArrayList;

    .line 1362
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1365
    :cond_0
    return-void
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 1465
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    .line 1468
    if-eqz v0, :cond_0

    .line 1469
    invoke-virtual {v0}, Lorg/dom4j/QName;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 1471
    if-eqz v0, :cond_0

    .line 1476
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/dom4j/tree/AbstractElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Lorg/dom4j/Namespace;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 5

    .prologue
    .line 1187
    if-nez p1, :cond_0

    .line 1188
    const-string p1, ""

    .line 1191
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1192
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    .line 1227
    :cond_1
    :goto_0
    return-object v0

    .line 1193
    :cond_2
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1194
    sget-object v0, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    goto :goto_0

    .line 1196
    :cond_3
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    .line 1198
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1200
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_5

    .line 1201
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1203
    instance-of v4, v0, Lorg/dom4j/Namespace;

    if-eqz v4, :cond_4

    .line 1204
    check-cast v0, Lorg/dom4j/Namespace;

    .line 1206
    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1200
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1213
    :cond_5
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 1215
    if-eqz v0, :cond_6

    .line 1216
    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 1218
    if-nez v0, :cond_1

    .line 1223
    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_8

    .line 1224
    :cond_7
    sget-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    goto :goto_0

    .line 1227
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 5

    .prologue
    .line 1231
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1232
    :cond_0
    sget-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    .line 1252
    :cond_1
    :goto_0
    return-object v0

    .line 1233
    :cond_2
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1234
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    goto :goto_0

    .line 1236
    :cond_3
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    .line 1238
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1240
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_5

    .line 1241
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1243
    instance-of v4, v0, Lorg/dom4j/Namespace;

    if-eqz v4, :cond_4

    .line 1244
    check-cast v0, Lorg/dom4j/Namespace;

    .line 1246
    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1240
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1252
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNamespacePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespacesForURI(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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
    .line 1257
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v3

    .line 1264
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v4

    .line 1266
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1268
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    .line 1269
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 1271
    instance-of v1, v0, Lorg/dom4j/Namespace;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/dom4j/Namespace;

    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1272
    check-cast v0, Lorg/dom4j/Namespace;

    invoke-virtual {v3, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    .line 1268
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1276
    :cond_1
    return-object v3
.end method

.method public getNodeTypeEnum()Lorg/dom4j/NodeType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/dom4j/NodeType;->ELEMENT_NODE:Lorg/dom4j/NodeType;

    return-object v0
.end method

.method public getPath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    if-ne p0, p1, :cond_0

    .line 98
    const-string v0, "."

    .line 109
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 103
    if-nez v0, :cond_1

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getXPathNameStep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_1
    if-ne v0, p1, :cond_2

    .line 106
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getXPathNameStep()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getPath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getXPathNameStep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQName(Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 2

    .prologue
    .line 1165
    const-string v0, ""

    .line 1169
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1171
    if-lez v1, :cond_0

    .line 1172
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1174
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1177
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 1179
    if-eqz v0, :cond_1

    .line 1180
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    .line 1182
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 987
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    .line 989
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 991
    if-lez v3, :cond_3

    .line 992
    const/4 v1, 0x1

    if-ne v3, v1, :cond_0

    .line 994
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->getContentAsStringValue(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    .line 1018
    :goto_0
    return-object v0

    .line 996
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v0

    .line 998
    :goto_1
    if-ge v1, v3, :cond_2

    .line 999
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 1001
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->getContentAsStringValue(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    .line 1003
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1010
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 998
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1014
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1018
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getXPathNameStep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    .line 119
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    if-eq v0, p1, :cond_1

    .line 122
    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getXPathNameStep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/dom4j/Element;->elements(Lorg/dom4j/QName;)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 132
    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 134
    if-ltz v0, :cond_2

    .line 135
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getXPathNameStep()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getName()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*[name()=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getXPathResult(I)Lorg/dom4j/Node;
    .locals 2

    .prologue
    .line 609
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    .line 611
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Node;->supportsParent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    invoke-interface {v0, p0}, Lorg/dom4j/Node;->asXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;

    move-result-object v0

    .line 615
    :cond_0
    return-object v0
.end method

.method public hasMixedContent()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 914
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    .line 916
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    :cond_0
    move v0, v2

    .line 936
    :goto_0
    return v0

    .line 920
    :cond_1
    const/4 v1, 0x0

    .line 922
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 923
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 925
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 927
    if-eq v0, v1, :cond_2

    .line 928
    if-eqz v1, :cond_3

    .line 929
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    :cond_3
    move-object v1, v0

    .line 934
    goto :goto_1

    :cond_4
    move v0, v2

    .line 936
    goto :goto_0
.end method

.method public indexOf(Lorg/dom4j/Node;)I
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRootElement()Z
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    .line 55
    if-ne v0, p0, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextOnly()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 940
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    .line 942
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 954
    :goto_0
    return v0

    .line 946
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 947
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 949
    instance-of v0, v0, Lorg/dom4j/CharacterData;

    if-nez v0, :cond_2

    .line 950
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 954
    goto :goto_0
.end method

.method public node(I)Lorg/dom4j/Node;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 250
    if-ltz p1, :cond_0

    .line 251
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v1

    .line 253
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-object v0

    .line 256
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    goto :goto_0
.end method

.method public nodeCount()I
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

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
    .line 274
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public normalize()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1039
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v4

    .line 1043
    const/4 v1, 0x0

    move-object v2, v3

    .line 1045
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1046
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 1048
    instance-of v5, v0, Lorg/dom4j/Text;

    if-eqz v5, :cond_3

    .line 1049
    check-cast v0, Lorg/dom4j/Text;

    .line 1051
    if-eqz v2, :cond_0

    .line 1052
    invoke-interface {v0}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/dom4j/Text;->appendText(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Text;)Z

    move v0, v1

    move-object v1, v2

    :goto_1
    move-object v2, v1

    move v1, v0

    .line 1079
    goto :goto_0

    .line 1056
    :cond_0
    invoke-interface {v0}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1060
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    .line 1061
    :cond_1
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Text;)Z

    move v0, v1

    move-object v1, v2

    goto :goto_1

    .line 1065
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto :goto_1

    .line 1069
    :cond_3
    instance-of v2, v0, Lorg/dom4j/Element;

    if-eqz v2, :cond_4

    .line 1070
    check-cast v0, Lorg/dom4j/Element;

    .line 1072
    invoke-interface {v0}, Lorg/dom4j/Element;->normalize()V

    .line 1077
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move-object v1, v3

    goto :goto_1

    .line 1080
    :cond_5
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .locals 5

    .prologue
    .line 566
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    .line 568
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 570
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 571
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 573
    instance-of v4, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v4, :cond_0

    .line 574
    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    .line 576
    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 582
    :goto_1
    return-object v0

    .line 570
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 582
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public processingInstructions()Ljava/util/List;
    .locals 6
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
    .line 526
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    .line 528
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v3

    .line 530
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 532
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 533
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 535
    instance-of v5, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v5, :cond_0

    .line 536
    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {v3, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    .line 532
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 540
    :cond_1
    return-object v3
.end method

.method public processingInstructions(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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
    .line 544
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    .line 546
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v3

    .line 548
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 550
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 551
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 553
    instance-of v5, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v5, :cond_0

    .line 554
    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    .line 556
    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 557
    invoke-virtual {v3, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    .line 550
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 562
    :cond_1
    return-object v3
.end method

.method public remove(Lorg/dom4j/Attribute;)Z
    .locals 3

    .prologue
    .line 502
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v1

    .line 504
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 506
    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->childRemoved(Lorg/dom4j/Node;)V

    .line 519
    :cond_0
    :goto_0
    return v0

    .line 510
    :cond_1
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/tree/AbstractElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v2

    .line 512
    if-eqz v2, :cond_0

    .line 513
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 515
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public remove(Lorg/dom4j/CDATA;)Z
    .locals 1

    .prologue
    .line 880
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Comment;)Z
    .locals 1

    .prologue
    .line 885
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Element;)Z
    .locals 1

    .prologue
    .line 890
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Entity;)Z
    .locals 1

    .prologue
    .line 894
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Namespace;)Z
    .locals 1

    .prologue
    .line 898
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Node;)Z
    .locals 2

    .prologue
    .line 813
    sget-object v0, Lorg/dom4j/tree/AbstractElement$1;->$SwitchMap$org$dom4j$NodeType:[I

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/dom4j/NodeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 842
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 815
    :pswitch_0
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Element;)Z

    move-result v0

    goto :goto_0

    .line 818
    :pswitch_1
    check-cast p1, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Attribute;)Z

    move-result v0

    goto :goto_0

    .line 821
    :pswitch_2
    check-cast p1, Lorg/dom4j/Text;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Text;)Z

    move-result v0

    goto :goto_0

    .line 824
    :pswitch_3
    check-cast p1, Lorg/dom4j/CDATA;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/CDATA;)Z

    move-result v0

    goto :goto_0

    .line 827
    :pswitch_4
    check-cast p1, Lorg/dom4j/Entity;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Entity;)Z

    move-result v0

    goto :goto_0

    .line 830
    :pswitch_5
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/ProcessingInstruction;)Z

    move-result v0

    goto :goto_0

    .line 833
    :pswitch_6
    check-cast p1, Lorg/dom4j/Comment;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Comment;)Z

    move-result v0

    goto :goto_0

    .line 839
    :pswitch_7
    check-cast p1, Lorg/dom4j/Namespace;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Namespace;)Z

    move-result v0

    goto :goto_0

    .line 813
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public remove(Lorg/dom4j/ProcessingInstruction;)Z
    .locals 1

    .prologue
    .line 903
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Text;)Z
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public removeNode(Lorg/dom4j/Node;)Z
    .locals 1

    .prologue
    .line 1418
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1420
    if-eqz v0, :cond_0

    .line 1421
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->childRemoved(Lorg/dom4j/Node;)V

    .line 1424
    :cond_0
    return v0
.end method

.method public removeProcessingInstruction(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 586
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    .line 588
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 591
    instance-of v2, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v2, :cond_0

    .line 592
    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    .line 594
    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 597
    const/4 v0, 0x1

    .line 602
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttributes(Lorg/xml/sax/Attributes;Lorg/dom4j/tree/NamespaceStack;Z)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 408
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 410
    if-lez v1, :cond_1

    .line 411
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v2

    .line 413
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 415
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    .line 417
    if-nez p3, :cond_0

    const-string v3, "xmlns"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 418
    :cond_0
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    .line 420
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    .line 422
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-virtual {p2, v3, v4, v1}, Lorg/dom4j/tree/NamespaceStack;->getAttributeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v1

    .line 427
    invoke-virtual {v2, p0, v1, v0}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    .line 460
    :cond_1
    return-void

    .line 431
    :cond_2
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractElement;->attributeList(I)Ljava/util/List;

    move-result-object v3

    .line 433
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 435
    :goto_0
    if-ge v0, v1, :cond_1

    .line 438
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    .line 440
    if-nez p3, :cond_3

    const-string v5, "xmlns"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 441
    :cond_3
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    .line 443
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    .line 445
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    .line 447
    invoke-virtual {p2, v5, v6, v4}, Lorg/dom4j/tree/NamespaceStack;->getAttributeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v4

    .line 450
    invoke-virtual {v2, p0, v4, v7}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v4

    .line 453
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {p0, v4}, Lorg/dom4j/tree/AbstractElement;->childAdded(Lorg/dom4j/Node;)V

    .line 435
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->setQName(Lorg/dom4j/QName;)V

    .line 66
    return-void
.end method

.method public setNamespace(Lorg/dom4j/Namespace;)V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->setQName(Lorg/dom4j/QName;)V

    .line 70
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 960
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    .line 962
    if-eqz v0, :cond_0

    .line 963
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 965
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 968
    sget-object v2, Lorg/dom4j/tree/AbstractElement$1;->$SwitchMap$org$dom4j$NodeType:[I

    invoke-interface {v0}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/NodeType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 974
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 982
    :cond_0
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 983
    return-void

    .line 968
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-super {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->toString(Ljava/lang/StringBuilder;)V

    .line 197
    const-string v1, " [Element: <"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 200
    const-string v1, " uri: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_0
    const-string v0, " attributes: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    const-string v0, "/>]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    return-void
.end method

.method public write(Ljava/io/Writer;)V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Lorg/dom4j/io/XMLWriter;

    new-instance v1, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v1}, Lorg/dom4j/io/OutputFormat;-><init>()V

    invoke-direct {v0, p1, v1}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 163
    invoke-virtual {v0, p0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Element;)V

    .line 164
    return-void
.end method
