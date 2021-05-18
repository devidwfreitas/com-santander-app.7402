.class Llor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkxl",
        "<",
        "Lkrz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lloi;


# direct methods
.method constructor <init>(Lloi;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Llor;->a:Lloi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 408
    check-cast p1, Lkrz;

    invoke-virtual {p0, p1}, Llor;->a(Lkrz;)V

    return-void
.end method

.method public a(Lkrz;)V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Llor;->a:Lloi;

    invoke-static {v0}, Lloi;->g(Lloi;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkrz;->c(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Llor;->a:Lloi;

    invoke-virtual {p1}, Lkrz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lloi;->a(Lloi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkrz;->e(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Llor;->a:Lloi;

    invoke-static {v0}, Lloi;->h(Lloi;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Llor;->a:Lloi;

    invoke-static {v0, p1}, Lloi;->a(Lloi;Lkrz;)V

    .line 417
    iget-object v0, p0, Llor;->a:Lloi;

    invoke-static {v0}, Lloi;->b(Lloi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Z)V

    .line 418
    return-void
.end method
