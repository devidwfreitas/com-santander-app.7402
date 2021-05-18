.class public Lorg/dom4j/tree/LazyList$Entry;
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
.field element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field next:Lorg/dom4j/tree/LazyList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/dom4j/tree/LazyList$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field previous:Lorg/dom4j/tree/LazyList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/dom4j/tree/LazyList$Entry",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lorg/dom4j/tree/LazyList$Entry;Lorg/dom4j/tree/LazyList$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/dom4j/tree/LazyList$Entry",
            "<TE;>;",
            "Lorg/dom4j/tree/LazyList$Entry",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Lorg/dom4j/tree/LazyList$Entry;->element:Ljava/lang/Object;

    .line 314
    iput-object p2, p0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 315
    iput-object p3, p0, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    .line 316
    return-void
.end method
