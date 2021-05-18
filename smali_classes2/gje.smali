.class public Lgje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lgje;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lgje;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;

    invoke-virtual {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string v1, ""

    .line 115
    iget-object v2, p0, Lgje;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;

    iget-object v2, v2, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;->i:Landroid/app/Activity;

    const-string v3, "Parcelamento de Fatura"

    invoke-static {v2, v3, v1, v0}, Lmyj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method
