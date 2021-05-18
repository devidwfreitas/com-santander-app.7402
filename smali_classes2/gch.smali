.class public Lgch;
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
    .line 105
    iput-object p1, p0, Lgch;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lgch;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->e(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lgdn;

    move-result-object v0

    invoke-interface {v0}, Lgdn;->c()V

    .line 109
    return-void
.end method
