.class Lkjx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkjo;


# direct methods
.method constructor <init>(Lkjo;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lkjx;->a:Lkjo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 245
    const-string v0, "Outros_RecargaDeTelefone_RecargaProgramada_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lkjx;->a:Lkjo;

    invoke-static {v0}, Lkjo;->c(Lkjo;)Lkgm;

    move-result-object v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lkjx;->a:Lkjo;

    invoke-virtual {v0}, Lkjo;->m()V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lkjx;->a:Lkjo;

    invoke-virtual {v0}, Lkjo;->n()V

    goto :goto_0
.end method
