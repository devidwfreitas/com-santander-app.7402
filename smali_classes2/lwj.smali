.class Llwj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lluc;


# instance fields
.field final synthetic a:Llwi;


# direct methods
.method constructor <init>(Llwi;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Llwj;->a:Llwi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkvp;)V
    .locals 4

    .prologue
    .line 108
    const-string v0, "Seguros_Sinistro_MeusSinistros_Consulta_Tipo_Acao"

    invoke-virtual {p1}, Lkvp;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "Seguros_Sinistro_MeusSinistros_Consulta_Status_Acao"

    const-string v1, "Aberto"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llwj;->a:Llwi;

    invoke-static {v1}, Llwi;->a(Llwi;)Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    const-string v1, "sinister-detail-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Llwj;->a:Llwi;

    invoke-static {v1}, Llwi;->a(Llwi;)Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method
