.class Lkhq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field final synthetic a:Lkhp;


# direct methods
.method constructor <init>(Lkhp;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lkhq;->a:Lkhp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    const-string v0, "tab1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "Outros_RecargaDeTelefone_Recarga_Acao"

    const-string v1, "Recarga"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lkhq;->a:Lkhp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkhp;->a(Lkhp;Lfvn;)Lfvn;

    .line 53
    iget-object v0, p0, Lkhq;->a:Lkhp;

    invoke-static {v0}, Lkhp;->a(Lkhp;)Lkhk;

    move-result-object v0

    invoke-interface {v0}, Lkhk;->a()V

    .line 64
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v0, "Outros_RecargaDeTelefone_Recarga_Acao"

    const-string v1, "RecargaProgramada"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lkhq;->a:Lkhp;

    invoke-static {v0}, Lkhp;->b(Lkhp;)Lfvn;

    move-result-object v0

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lkhq;->a:Lkhp;

    invoke-static {v0}, Lkhp;->a(Lkhp;)Lkhk;

    move-result-object v0

    invoke-interface {v0}, Lkhk;->b()V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lkhq;->a:Lkhp;

    invoke-static {v0}, Lkhp;->a(Lkhp;)Lkhk;

    move-result-object v0

    iget-object v1, p0, Lkhq;->a:Lkhp;

    invoke-static {v1}, Lkhp;->b(Lkhp;)Lfvn;

    move-result-object v1

    invoke-interface {v0, v1}, Lkhk;->a(Lfvn;)V

    goto :goto_0
.end method
