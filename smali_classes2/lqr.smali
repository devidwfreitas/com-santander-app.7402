.class Llqr;
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
        "Lkvp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llqq;


# direct methods
.method constructor <init>(Llqq;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Llqr;->a:Llqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkvp;Lkvp;)I
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p1}, Lkvp;->e()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lkvp;->e()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p2}, Lkvp;->e()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lkvp;->e()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 291
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 283
    check-cast p1, Lkvp;

    check-cast p2, Lkvp;

    invoke-virtual {p0, p1, p2}, Llqr;->a(Lkvp;Lkvp;)I

    move-result v0

    return v0
.end method
