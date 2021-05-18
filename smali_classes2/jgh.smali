.class public Ljgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Ljgh;->b:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    iput-object p2, p0, Ljgh;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Ljgh;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 440
    iget-object v0, p0, Ljgh;->b:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->b(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljdx;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljdx;->a(Z)V

    .line 441
    iget-object v0, p0, Ljgh;->b:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->d()V

    .line 442
    return-void
.end method
