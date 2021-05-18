.class Ljmr;
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
        "Ljlq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljmn;


# direct methods
.method constructor <init>(Ljmn;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Ljmr;->a:Ljmn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljlq;Ljlq;)I
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Ljmr;->a:Ljmn;

    invoke-static {v0, p1}, Ljmn;->a(Ljmn;Ljlq;)F

    move-result v0

    iget-object v1, p0, Ljmr;->a:Ljmn;

    invoke-static {v1, p2}, Ljmn;->a(Ljmn;Ljlq;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 431
    float-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 427
    check-cast p1, Ljlq;

    check-cast p2, Ljlq;

    invoke-virtual {p0, p1, p2}, Ljmr;->a(Ljlq;Ljlq;)I

    move-result v0

    return v0
.end method
