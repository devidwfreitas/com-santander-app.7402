.class Limv;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Limu;


# direct methods
.method constructor <init>(Limu;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Limv;->a:Limu;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 292
    const-string v0, "Santander"

    const-string v1, "Activity observer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Limv;->a:Limu;

    iget-object v0, v0, Limu;->a:Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;

    invoke-virtual {v0}, Lcom/santander/app/habilitacaointernacional/activity/ConsultarAlterarHabilitacaoInternacionalActivity;->a()V

    .line 294
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 295
    return-void
.end method
