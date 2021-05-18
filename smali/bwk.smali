.class Lbwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbnp",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lbvy;


# direct methods
.method constructor <init>(Lbvy;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lbwk;->b:Lbvy;

    iput-object p2, p0, Lbwk;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 545
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lbwk;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lbwk;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lbwk;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lbnq;)V
    .locals 0

    .prologue
    .line 545
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lbwk;->a(Ljava/lang/String;Ljava/lang/Object;Lbnq;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lbnq;)V
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lbwk;->a:Landroid/os/Bundle;

    invoke-static {v0, p1, p2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    new-instance v0, Lbhp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 562
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-interface {p3, v0}, Lbnq;->a(Lbhp;)V

    .line 564
    :cond_0
    return-void
.end method
