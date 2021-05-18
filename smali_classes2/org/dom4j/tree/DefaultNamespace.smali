.class public Lorg/dom4j/tree/DefaultNamespace;
.super Lorg/dom4j/Namespace;
.source "SourceFile"


# instance fields
.field private parent:Lorg/dom4j/Element;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/dom4j/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p2, p3}, Lorg/dom4j/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lorg/dom4j/tree/DefaultNamespace;->parent:Lorg/dom4j/Element;

    .line 49
    return-void
.end method


# virtual methods
.method protected createHashCode()I
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lorg/dom4j/Namespace;->createHashCode()I

    move-result v0

    .line 61
    iget-object v1, p0, Lorg/dom4j/tree/DefaultNamespace;->parent:Lorg/dom4j/Element;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lorg/dom4j/tree/DefaultNamespace;->parent:Lorg/dom4j/Element;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 65
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 77
    instance-of v0, p1, Lorg/dom4j/tree/DefaultNamespace;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 78
    check-cast v0, Lorg/dom4j/tree/DefaultNamespace;

    .line 80
    iget-object v0, v0, Lorg/dom4j/tree/DefaultNamespace;->parent:Lorg/dom4j/Element;

    iget-object v1, p0, Lorg/dom4j/tree/DefaultNamespace;->parent:Lorg/dom4j/Element;

    if-ne v0, v1, :cond_0

    .line 81
    invoke-super {p0, p1}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParent()Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/dom4j/tree/DefaultNamespace;->parent:Lorg/dom4j/Element;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lorg/dom4j/Namespace;->hashCode()I

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lorg/dom4j/tree/DefaultNamespace;->parent:Lorg/dom4j/Element;

    .line 101
    return-void
.end method

.method public supportsParent()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method
