.class Lorg/dom4j/tree/LazyList$Range;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field lower:Lorg/dom4j/tree/LazyList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/dom4j/tree/LazyList$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field upper:Lorg/dom4j/tree/LazyList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/dom4j/tree/LazyList$Entry",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/dom4j/tree/LazyList$1;)V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Lorg/dom4j/tree/LazyList$Range;-><init>()V

    return-void
.end method
