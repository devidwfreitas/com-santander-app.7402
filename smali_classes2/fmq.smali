.class public Lfmq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field final synthetic a:Lcom/santander/app/RendaFixaResgateActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/RendaFixaResgateActivity;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lfmq;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 379
    const-string v1, "Investimentos_RendaFixa_Resgate_DataOpcao_Acao"

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "DataAgendada"

    :goto_0
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void

    .line 379
    :cond_0
    const-string v0, "Hoje"

    goto :goto_0
.end method
