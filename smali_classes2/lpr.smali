.class public Llpr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Llpr;->a:Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 150
    const-string v0, "Seguros_Sinistro_Acionar_PopUpAssistencia24h_Acao"

    const-string v1, "MeusSinistros"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llpr;->a:Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    iget-object v1, p0, Llpr;->a:Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    return-void
.end method
