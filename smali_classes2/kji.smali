.class Lkji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkw",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/santander/app/contacorrente/domain/Conta;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkjh;


# direct methods
.method constructor <init>(Lkjh;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lkji;->a:Lkjh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lkji;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    iget-object v0, p0, Lkji;->a:Lkjh;

    invoke-static {v0}, Lkjh;->a(Lkjh;)Lkjo;

    move-result-object v0

    const-string v1, "Ocorreu um erro ao carregar as informa\u00e7\u00f5es"

    invoke-virtual {v0, v1}, Lkjo;->a(Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lkji;->a:Lkjh;

    invoke-static {v0}, Lkjh;->a(Lkjh;)Lkjo;

    move-result-object v0

    const-string v1, "Ocorreu um erro ao carregar as informa\u00e7\u00f5es"

    invoke-virtual {v0, v1}, Lkjo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lkji;->a:Lkjh;

    invoke-static {v0, p1}, Lkjh;->a(Lkjh;Ljava/util/List;)Ljava/util/List;

    .line 55
    iget-object v0, p0, Lkji;->a:Lkjh;

    invoke-static {v0}, Lkjh;->a(Lkjh;)Lkjo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkjo;->a(Ljava/util/List;)V

    goto :goto_0
.end method
