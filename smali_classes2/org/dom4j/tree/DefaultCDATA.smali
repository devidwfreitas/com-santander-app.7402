.class public Lorg/dom4j/tree/DefaultCDATA;
.super Lorg/dom4j/tree/FlyweightCDATA;
.source "SourceFile"


# instance fields
.field private parent:Lorg/dom4j/Element;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/dom4j/tree/FlyweightCDATA;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p2}, Lorg/dom4j/tree/FlyweightCDATA;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lorg/dom4j/tree/DefaultCDATA;->parent:Lorg/dom4j/Element;

    .line 46
    return-void
.end method


# virtual methods
.method public getParent()Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/dom4j/tree/DefaultCDATA;->parent:Lorg/dom4j/Element;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lorg/dom4j/tree/DefaultCDATA;->parent:Lorg/dom4j/Element;

    .line 61
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lorg/dom4j/tree/DefaultCDATA;->text:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public supportsParent()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method
