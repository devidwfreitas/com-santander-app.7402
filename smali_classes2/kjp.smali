.class Lkjp;
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
    .line 134
    iput-object p1, p0, Lkjp;->a:Lkjo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 137
    const-string v0, "Outros_RecargaDeTelefone_RecargaProgramada_Acao"

    const-string v1, "SelecionarOperadora"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lkjp;->a:Lkjo;

    invoke-static {v0}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v0

    invoke-interface {v0}, Lkjn;->h()V

    .line 139
    return-void
.end method
