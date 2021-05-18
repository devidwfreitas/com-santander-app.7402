.class public Lljm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llkd;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lljm;->a:Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lljm;->a:Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const-string v0, "Seguros_Contratacao_Vida_ConhecaMais_Assistencias_Info_Acao"

    invoke-static {v0, p1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    :goto_0
    iget-object v0, p0, Lljm;->a:Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;

    invoke-static {p1, p2}, Llms;->a(Ljava/lang/String;Ljava/lang/String;)Llms;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;Llms;)Llms;

    .line 187
    iget-object v0, p0, Lljm;->a:Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->c(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;)Llms;

    move-result-object v0

    iget-object v1, p0, Lljm;->a:Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog-coverage-information"

    invoke-virtual {v0, v1, v2}, Llms;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 188
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lljm;->a:Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "Seguros_Contratacao_AP_ConhecaMais_Assistencias_Info_Acao"

    invoke-static {v0, p1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
