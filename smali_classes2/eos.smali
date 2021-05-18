.class Leos;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lekn",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lekn;

.field final synthetic b:Leor;


# direct methods
.method constructor <init>(Leor;Lekn;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Leos;->b:Leor;

    iput-object p2, p0, Leos;->a:Lekn;

    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/sql/Timestamp;
    .locals 4

    .prologue
    .line 598
    iget-object v0, p0, Leos;->a:Lekn;

    invoke-virtual {v0, p1}, Lekn;->b(Lepo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 599
    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 596
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Leos;->a(Leps;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public a(Leps;Ljava/sql/Timestamp;)V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Leos;->a:Lekn;

    invoke-virtual {v0, p1, p2}, Lekn;->a(Leps;Ljava/lang/Object;)V

    .line 604
    return-void
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 596
    invoke-virtual {p0, p1}, Leos;->a(Lepo;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method
