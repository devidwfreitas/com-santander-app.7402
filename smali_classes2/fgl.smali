.class public Lfgl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lfur;

.field final synthetic b:Lcom/santander/app/BeneficiarioPagamentoListActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/BeneficiarioPagamentoListActivity;Lfur;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lfgl;->b:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    iput-object p2, p0, Lfgl;->a:Lfur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 217
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 218
    iget-object v0, p0, Lfgl;->a:Lfur;

    sget-object v1, Lfus;->DELETE:Lfus;

    invoke-virtual {v0, v1}, Lfur;->a(Lfus;)V

    .line 219
    new-instance v0, Lfgn;

    iget-object v1, p0, Lfgl;->b:Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-direct {v0, v1}, Lfgn;-><init>(Lcom/santander/app/BeneficiarioPagamentoListActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lfur;

    const/4 v2, 0x0

    iget-object v3, p0, Lfgl;->a:Lfur;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lfgn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 221
    :cond_0
    return-void
.end method
