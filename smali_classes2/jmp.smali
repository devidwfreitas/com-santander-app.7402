.class Ljmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljmn;


# direct methods
.method constructor <init>(Ljmn;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Ljmp;->c:Ljmn;

    iput-object p2, p0, Ljmp;->a:Ljava/lang/String;

    iput-object p3, p0, Ljmp;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 349
    const-string v0, "Outros_Agencias_TracarRota_DesejaAcessarOutroAplicativo_PopUp_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "google.navigation:q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljmp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljmp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 352
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 353
    iget-object v0, p0, Ljmp;->c:Ljmn;

    invoke-static {v0}, Ljmn;->a(Ljmn;)Lgrs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgrs;->startActivity(Landroid/content/Intent;)V

    .line 354
    iget-object v0, p0, Ljmp;->c:Ljmn;

    invoke-static {v0}, Ljmn;->b(Ljmn;)V

    .line 355
    return-void
.end method
