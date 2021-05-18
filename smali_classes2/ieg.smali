.class public Lieg;
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
    .line 310
    iput-object p1, p0, Lieg;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 315
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lieg;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-virtual {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->a()V

    .line 322
    :goto_0
    return-void

    .line 318
    :cond_0
    const-string v0, "Cartoes_Fatura_ResumoDaFatura_Acao"

    const-string v1, "ParcelamentoDeFatura"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lieg;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    const-class v1, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Ljava/lang/Class;)V

    goto :goto_0
.end method
