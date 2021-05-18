.class Lids;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkv",
        "<",
        "Libr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Lidr;


# direct methods
.method constructor <init>(Lidr;Lgkw;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lids;->b:Lidr;

    iput-object p2, p0, Lids;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Libr;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lids;->a:Lgkw;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lids;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 51
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Libr;

    invoke-virtual {p0, p1}, Lids;->a(Libr;)V

    return-void
.end method
