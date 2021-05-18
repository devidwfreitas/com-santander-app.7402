.class public Lfly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field final synthetic a:Lcom/santander/app/RendaFixaAplicacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/RendaFixaAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lfly;->a:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 347
    const-string v1, "Investimentos_RendaFixa_Aplicar_DataOpcao"

    if-nez p1, :cond_0

    const-string v0, "Hoje"

    :goto_0
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void

    .line 347
    :cond_0
    const-string v0, "DataAgendada"

    goto :goto_0
.end method
