.class public Lljl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llks;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lljl;->a:Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lljl;->a:Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    const-string v0, "Seguros_Contratacao_Vida_ConhecaMais_Coberturas_Info_Acao"

    invoke-static {v0, p1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lljl;->a:Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;

    invoke-static {p1, p2}, Llna;->a(Ljava/lang/String;Ljava/lang/String;)Llna;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;Llna;)Llna;

    .line 172
    iget-object v0, p0, Lljl;->a:Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->b(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;)Llna;

    move-result-object v0

    iget-object v1, p0, Lljl;->a:Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog-coverage-information"

    invoke-virtual {v0, v1, v2}, Llna;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 173
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lljl;->a:Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "Seguros_Contratacao_AP_ConhecaMais_Coberturas_Info_Acao"

    invoke-static {v0, p1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
