.class public Lhcp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lhcp;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 143
    const-string v0, "Cartoes_Desbloqueio_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lhcp;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;

    invoke-virtual {v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->a()V

    .line 145
    return-void
.end method
