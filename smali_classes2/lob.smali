.class Llob;
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
.field final synthetic a:Llnt;


# direct methods
.method constructor <init>(Llnt;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Llob;->a:Llnt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 473
    check-cast p1, Lkri;

    invoke-virtual {p0, p1}, Llob;->a(Lkri;)V

    return-void
.end method

.method public a(Lkri;)V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Llob;->a:Llnt;

    invoke-virtual {p1}, Lkri;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Llnt;->a(Llnt;Ljava/util/List;)V

    .line 477
    iget-object v0, p0, Llob;->a:Llnt;

    invoke-static {v0}, Llnt;->e(Llnt;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {p1}, Lkri;->e()Lkrr;

    move-result-object v1

    invoke-virtual {v1}, Lkrr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmhz;->c(Ljava/lang/String;)V

    .line 478
    sget-object v0, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v0, p1}, Lksq;->setIdealProductResponse(Lkri;)V

    .line 481
    iget-object v0, p0, Llob;->a:Llnt;

    invoke-static {v0}, Llnt;->e(Llnt;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Z)V

    .line 482
    return-void
.end method
