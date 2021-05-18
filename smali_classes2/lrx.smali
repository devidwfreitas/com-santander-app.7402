.class public Llrx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V
    .locals 0

    .prologue
    .line 1144
    iput-object p1, p0, Llrx;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1147
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_Vistoria_Acao"

    const-string v1, "RemarcarVistoria"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llrx;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1149
    const-string v1, "sinister-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    iget-object v3, p0, Llrx;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v3}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->k(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Lkvp;

    move-result-object v3

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1150
    iget-object v1, p0, Llrx;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1151
    return-void
.end method
