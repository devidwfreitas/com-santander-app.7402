.class public Lorg/dom4j/util/NodeComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/dom4j/Node;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lorg/dom4j/Node;

    check-cast p2, Lorg/dom4j/Node;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Node;Lorg/dom4j/Node;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 203
    if-ne p1, p2, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    .line 205
    :cond_0
    if-nez p1, :cond_1

    .line 207
    const/4 v0, -0x1

    goto :goto_0

    .line 208
    :cond_1
    if-nez p2, :cond_2

    .line 209
    const/4 v0, 0x1

    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public compare(Lorg/dom4j/Attribute;Lorg/dom4j/Attribute;)I
    .locals 2

    .prologue
    .line 106
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/QName;Lorg/dom4j/QName;)I

    move-result v0

    .line 108
    if-nez v0, :cond_0

    .line 109
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 112
    :cond_0
    return v0
.end method

.method public compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I
    .locals 2

    .prologue
    .line 136
    invoke-interface {p1}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/dom4j/Document;Lorg/dom4j/Document;)I
    .locals 2

    .prologue
    .line 69
    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)I

    move-result v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compareContent(Lorg/dom4j/Branch;Lorg/dom4j/Branch;)I

    move-result v0

    .line 75
    :cond_0
    return v0
.end method

.method public compare(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)I
    .locals 2

    .prologue
    .line 140
    if-ne p1, p2, :cond_1

    .line 141
    const/4 v0, 0x0

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    if-nez p1, :cond_2

    .line 144
    const/4 v0, -0x1

    goto :goto_0

    .line 145
    :cond_2
    if-nez p2, :cond_3

    .line 146
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :cond_3
    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 151
    if-nez v0, :cond_0

    .line 152
    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 154
    if-nez v0, :cond_0

    .line 155
    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public compare(Lorg/dom4j/Element;Lorg/dom4j/Element;)I
    .locals 4

    .prologue
    .line 79
    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/QName;Lorg/dom4j/QName;)I

    move-result v0

    .line 81
    if-nez v0, :cond_0

    .line 83
    invoke-interface {p1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v2

    .line 84
    invoke-interface {p2}, Lorg/dom4j/Element;->attributeCount()I

    move-result v0

    .line 85
    sub-int v0, v2, v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 89
    invoke-interface {p1, v1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v3

    .line 91
    invoke-virtual {p0, v0, v3}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Attribute;Lorg/dom4j/Attribute;)I

    move-result v0

    .line 93
    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_1
    return v0

    .line 88
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compareContent(Lorg/dom4j/Branch;Lorg/dom4j/Branch;)I

    move-result v0

    goto :goto_1
.end method

.method public compare(Lorg/dom4j/Entity;Lorg/dom4j/Entity;)I
    .locals 2

    .prologue
    .line 163
    invoke-interface {p1}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 165
    if-nez v0, :cond_0

    .line 166
    invoke-interface {p1}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 169
    :cond_0
    return v0
.end method

.method public compare(Lorg/dom4j/Namespace;Lorg/dom4j/Namespace;)I
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 128
    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 132
    :cond_0
    return v0
.end method

.method public compare(Lorg/dom4j/Node;Lorg/dom4j/Node;)I
    .locals 3

    .prologue
    .line 25
    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v0

    .line 26
    invoke-interface {p2}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v1

    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    invoke-virtual {v0}, Lorg/dom4j/NodeType;->getCode()S

    move-result v0

    invoke-virtual {v1}, Lorg/dom4j/NodeType;->getCode()S

    move-result v1

    sub-int/2addr v0, v1

    .line 61
    :goto_0
    return v0

    .line 31
    :cond_0
    sget-object v1, Lorg/dom4j/util/NodeComparator$1;->$SwitchMap$org$dom4j$NodeType:[I

    invoke-virtual {v0}, Lorg/dom4j/NodeType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid node types. node1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and node2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :pswitch_0
    check-cast p1, Lorg/dom4j/Element;

    check-cast p2, Lorg/dom4j/Element;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Element;Lorg/dom4j/Element;)I

    move-result v0

    goto :goto_0

    .line 36
    :pswitch_1
    check-cast p1, Lorg/dom4j/Document;

    check-cast p2, Lorg/dom4j/Document;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Document;Lorg/dom4j/Document;)I

    move-result v0

    goto :goto_0

    .line 39
    :pswitch_2
    check-cast p1, Lorg/dom4j/Attribute;

    check-cast p2, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Attribute;Lorg/dom4j/Attribute;)I

    move-result v0

    goto :goto_0

    .line 42
    :pswitch_3
    check-cast p1, Lorg/dom4j/Text;

    check-cast p2, Lorg/dom4j/Text;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I

    move-result v0

    goto :goto_0

    .line 45
    :pswitch_4
    check-cast p1, Lorg/dom4j/CDATA;

    check-cast p2, Lorg/dom4j/CDATA;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I

    move-result v0

    goto :goto_0

    .line 48
    :pswitch_5
    check-cast p1, Lorg/dom4j/Entity;

    check-cast p2, Lorg/dom4j/Entity;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Entity;Lorg/dom4j/Entity;)I

    move-result v0

    goto :goto_0

    .line 51
    :pswitch_6
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    check-cast p2, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/ProcessingInstruction;Lorg/dom4j/ProcessingInstruction;)I

    move-result v0

    goto :goto_0

    .line 55
    :pswitch_7
    check-cast p1, Lorg/dom4j/Comment;

    check-cast p2, Lorg/dom4j/Comment;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I

    move-result v0

    goto :goto_0

    .line 58
    :pswitch_8
    check-cast p1, Lorg/dom4j/DocumentType;

    check-cast p2, Lorg/dom4j/DocumentType;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)I

    move-result v0

    goto :goto_0

    .line 61
    :pswitch_9
    check-cast p1, Lorg/dom4j/Namespace;

    check-cast p2, Lorg/dom4j/Namespace;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Namespace;Lorg/dom4j/Namespace;)I

    move-result v0

    goto/16 :goto_0

    .line 31
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
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public compare(Lorg/dom4j/ProcessingInstruction;Lorg/dom4j/ProcessingInstruction;)I
    .locals 2

    .prologue
    .line 173
    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 175
    if-nez v0, :cond_0

    .line 176
    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 179
    :cond_0
    return v0
.end method

.method public compare(Lorg/dom4j/QName;Lorg/dom4j/QName;)I
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p1}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 118
    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p1}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 122
    :cond_0
    return v0
.end method

.method public compareContent(Lorg/dom4j/Branch;Lorg/dom4j/Branch;)I
    .locals 4

    .prologue
    .line 183
    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v2

    .line 184
    invoke-interface {p2}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v0

    .line 185
    sub-int v0, v2, v0

    .line 187
    if-nez v0, :cond_0

    .line 188
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 189
    invoke-interface {p1, v1}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    .line 190
    invoke-interface {p2, v1}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v3

    .line 191
    invoke-virtual {p0, v0, v3}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Node;Lorg/dom4j/Node;)I

    move-result v0

    .line 193
    if-eqz v0, :cond_1

    .line 199
    :cond_0
    return v0

    .line 188
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
