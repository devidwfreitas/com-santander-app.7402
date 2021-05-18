.class public Lied;
.super Lgmz;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/santander/app/faturas/activity/FaturasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/faturas/activity/FaturasActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lied;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iput-object p2, p0, Lied;->a:Ljava/util/List;

    invoke-direct {p0}, Lgmz;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lamx;)V
    .locals 0

    .prologue
    .line 715
    check-cast p1, Lgmw;

    invoke-virtual {p0, p1}, Lied;->a(Lgmw;)V

    return-void
.end method

.method public a(Lgmw;)V
    .locals 3

    .prologue
    .line 718
    const-string v0, "Cartoes_Fatura_Acao"

    const-string v1, "SelecionarCartoes"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lied;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-virtual {p1}, Lgmw;->e()Lghu;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Lghu;)Lghu;

    .line 721
    iget-object v0, p0, Lied;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v1, p0, Lied;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;I)I

    .line 722
    iget-object v0, p0, Lied;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iget-object v1, p0, Lied;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->f(Lcom/santander/app/faturas/activity/FaturasActivity;)Lghu;

    move-result-object v1

    invoke-virtual {v1}, Lghu;->u()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;Z)Z

    .line 724
    new-instance v0, Liep;

    iget-object v1, p0, Lied;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Liep;-><init>(Lcom/santander/app/faturas/activity/FaturasActivity;Lieb;)V

    .line 725
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Liep;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 726
    return-void
.end method
