.class public Limg;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Limg;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 271
    const-string v0, "Santander"

    const-string v1, "Activity observer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Limg;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;->g(Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;)V

    .line 273
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 274
    return-void
.end method
