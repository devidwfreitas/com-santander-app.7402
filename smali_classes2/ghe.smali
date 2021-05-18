.class public Lghe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lghe;->a:Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 105
    const-string v0, "Cartoes_Bloqueio_Acao"

    const-string v1, "Bloqueio"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lghe;->a:Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->a(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)V

    .line 107
    return-void
.end method
