.class Lloj;
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
        "Lkri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lloi;


# direct methods
.method constructor <init>(Lloi;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lloj;->a:Lloi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 190
    check-cast p1, Lkri;

    invoke-virtual {p0, p1}, Lloj;->a(Lkri;)V

    return-void
.end method

.method public a(Lkri;)V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lloj;->a:Lloi;

    invoke-static {v0, p1}, Lloi;->a(Lloi;Lkri;)Lkri;

    .line 196
    iget-object v0, p0, Lloj;->a:Lloi;

    invoke-static {v0}, Lloi;->b(Lloi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    iget-object v1, p0, Lloj;->a:Lloi;

    invoke-static {v1}, Lloi;->a(Lloi;)Lkri;

    move-result-object v1

    invoke-virtual {v1}, Lkri;->e()Lkrr;

    move-result-object v1

    invoke-virtual {v1}, Lkrr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmhz;->c(Ljava/lang/String;)V

    .line 198
    sget-object v0, Lksq;->INSTANCE:Lksq;

    iget-object v1, p0, Lloj;->a:Lloi;

    invoke-static {v1}, Lloi;->a(Lloi;)Lkri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lksq;->setIdealProductResponse(Lkri;)V

    .line 199
    iget-object v0, p0, Lloj;->a:Lloi;

    iget-object v1, p0, Lloj;->a:Lloi;

    invoke-static {v1}, Lloi;->a(Lloi;)Lkri;

    move-result-object v1

    iget-object v2, p0, Lloj;->a:Lloi;

    invoke-static {v2}, Lloi;->c(Lloi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lloi;->a(Lloi;Lkri;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lloj;->a:Lloi;

    invoke-static {v0}, Lloi;->b(Lloi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Z)V

    .line 203
    return-void
.end method
