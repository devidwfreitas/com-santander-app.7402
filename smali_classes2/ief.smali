.class public Lief;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/faturas/activity/FaturasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lief;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 300
    const-string v0, "Cartoes_Fatura_ResumoDaFatura_Acao"

    const-string v1, "PagarFatura"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lief;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-virtual {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->a()V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lief;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    const-class v1, Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Ljava/lang/Class;)V

    goto :goto_0
.end method
