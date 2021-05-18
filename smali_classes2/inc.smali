.class Linc;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Linb;


# direct methods
.method constructor <init>(Linb;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Linc;->a:Linb;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 249
    const-string v0, "Santander"

    const-string v1, "Activity observer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Linc;->a:Linb;

    iget-object v0, v0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->d(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)V

    .line 251
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 252
    return-void
.end method
