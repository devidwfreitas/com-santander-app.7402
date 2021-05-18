.class Lkiq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkip;


# direct methods
.method constructor <init>(Lkip;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lkiq;->a:Lkip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 158
    const-string v0, "Outros_RecargaDeTelefone_Recarga_Acao"

    const-string v1, "SelecionarOperadora"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lkiq;->a:Lkip;

    invoke-static {v0}, Lkip;->a(Lkip;)Lkio;

    move-result-object v0

    invoke-interface {v0}, Lkio;->g()V

    .line 160
    return-void
.end method
