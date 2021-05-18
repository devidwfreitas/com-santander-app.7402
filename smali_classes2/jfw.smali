.class public Ljfw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Ljfw;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Ljfw;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->b(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)Ljik;

    move-result-object v0

    iget-object v1, p0, Ljfw;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)Ljdx;

    move-result-object v1

    invoke-virtual {v1}, Ljdx;->w()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljik;->b(Ljava/lang/String;)V

    .line 153
    return-void
.end method
