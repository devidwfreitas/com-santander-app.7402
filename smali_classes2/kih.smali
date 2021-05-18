.class Lkih;
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
.field final synthetic a:Lkig;


# direct methods
.method constructor <init>(Lkig;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lkih;->a:Lkig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lkih;->a(Ljava/util/List;)V

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
    .line 59
    if-nez p1, :cond_0

    .line 60
    iget-object v0, p0, Lkih;->a:Lkig;

    invoke-static {v0}, Lkig;->a(Lkig;)Lkip;

    move-result-object v0

    const-string v1, "Dados n\u00e3o encontrados!"

    invoke-virtual {v0, v1}, Lkip;->a(Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lkih;->a:Lkig;

    invoke-static {v0}, Lkig;->a(Lkig;)Lkip;

    move-result-object v0

    const-string v1, "Dados n\u00e3o encontrados!"

    invoke-virtual {v0, v1}, Lkip;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lkih;->a:Lkig;

    invoke-static {v0, p1}, Lkig;->a(Lkig;Ljava/util/List;)Ljava/util/List;

    .line 65
    iget-object v0, p0, Lkih;->a:Lkig;

    invoke-static {v0}, Lkig;->a(Lkig;)Lkip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkip;->a(Ljava/util/List;)V

    goto :goto_0
.end method
