.class public Lmbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llnl;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lmbj;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lksd;)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lmbj;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->a(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;Lksd;)Lksd;

    .line 308
    iget-object v0, p0, Lmbj;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->e(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 309
    iget-object v0, p0, Lmbj;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->c(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)Llkt;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Llkt;->a(Ljava/lang/Object;I)V

    .line 314
    :goto_0
    iget-object v0, p0, Lmbj;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->d(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)Lmbl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lmbj;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->d(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)Lmbl;

    move-result-object v0

    invoke-interface {v0, p1}, Lmbl;->a(Lksd;)V

    .line 317
    :cond_0
    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lmbj;->a:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->c(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)Llkt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Llkt;->a(Ljava/lang/Object;I)V

    goto :goto_0
.end method
