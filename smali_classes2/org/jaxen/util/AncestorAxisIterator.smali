.class public Lorg/jaxen/util/AncestorAxisIterator;
.super Lorg/jaxen/util/AncestorOrSelfAxisIterator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/jaxen/Navigator;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lorg/jaxen/util/AncestorOrSelfAxisIterator;-><init>(Ljava/lang/Object;Lorg/jaxen/Navigator;)V

    .line 78
    invoke-virtual {p0}, Lorg/jaxen/util/AncestorAxisIterator;->next()Ljava/lang/Object;

    .line 79
    return-void
.end method
