.class public Liml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Liml;->a:Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Liml;->a:Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Liml;->a:Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;

    .line 91
    invoke-virtual {v2}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void
.end method
