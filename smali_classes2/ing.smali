.class public Ling;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Ling;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Ling;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->e(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)V

    .line 176
    iget-object v0, p0, Ling;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->f(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ling;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->f(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Ling;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->f(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 178
    iget-object v0, p0, Ling;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 180
    :cond_0
    return-void
.end method
