.class Ljmq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljmn;


# direct methods
.method constructor <init>(Ljmn;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Ljmq;->a:Ljmn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 361
    const-string v0, "Outros_Agencias_TracarRota_DesejaAcessarOutroAplicativo_PopUp_Acao"

    const-string v1, "Cancelar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Ljmq;->a:Ljmn;

    invoke-static {v0}, Ljmn;->b(Ljmn;)V

    .line 363
    return-void
.end method
