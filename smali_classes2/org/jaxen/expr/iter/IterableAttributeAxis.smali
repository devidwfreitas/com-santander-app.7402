.class public Lorg/jaxen/expr/iter/IterableAttributeAxis;
.super Lorg/jaxen/expr/iter/IterableAxis;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/jaxen/expr/iter/IterableAxis;-><init>(I)V

    .line 66
    return-void
.end method


# virtual methods
.method public iterator(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p2}, Lorg/jaxen/ContextSupport;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaxen/Navigator;->getAttributeAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public namedAccessIterator(Ljava/lang/Object;Lorg/jaxen/ContextSupport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p2}, Lorg/jaxen/ContextSupport;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v0

    check-cast v0, Lorg/jaxen/NamedAccessNavigator;

    .line 96
    invoke-interface {v0, p1, p3, p4, p5}, Lorg/jaxen/NamedAccessNavigator;->getAttributeAxisIterator(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public supportsNamedAccess(Lorg/jaxen/ContextSupport;)Z
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p1}, Lorg/jaxen/ContextSupport;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v0

    instance-of v0, v0, Lorg/jaxen/NamedAccessNavigator;

    return v0
.end method
