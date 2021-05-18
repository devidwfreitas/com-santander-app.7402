.class public Lgcj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lgcj;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lgcj;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->g(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 130
    iget-object v0, p0, Lgcj;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    new-instance v1, Lgdo;

    iget-object v2, p0, Lgcj;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-direct {v1, v2}, Lgdo;-><init>(Lgck;)V

    invoke-static {v0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;Lgdn;)Lgdn;

    .line 131
    return-void
.end method
