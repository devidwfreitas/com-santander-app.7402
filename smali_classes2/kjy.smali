.class Lkjy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lkjo;


# direct methods
.method constructor <init>(Lkjo;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lkjy;->a:Lkjo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lkjy;->a:Lkjo;

    invoke-static {v0, p2}, Lkjo;->a(Lkjo;Z)Z

    .line 261
    if-eqz p2, :cond_0

    .line 262
    const-string v0, "Outros_RecargaDeTelefone_RecargaProgramada_DataPeriodoIndeterminado_Acao"

    const-string v1, "Sim"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lkjy;->a:Lkjo;

    invoke-static {v0}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v0

    invoke-interface {v0}, Lkjn;->e()V

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    const-string v0, "Outros_RecargaDeTelefone_RecargaProgramada_DataPeriodoIndeterminado_Acao"

    const-string v1, "Nao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lkjy;->a:Lkjo;

    invoke-static {v0}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v0

    invoke-interface {v0}, Lkjn;->d()V

    goto :goto_0
.end method
