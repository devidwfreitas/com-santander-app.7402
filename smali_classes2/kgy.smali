.class Lkgy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkgx;


# direct methods
.method constructor <init>(Lkgx;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lkgy;->a:Lkgx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 53
    const-string v0, "Outros_RecargaDeTelefone_RecargaProgramada_Acao"

    const-string v1, "Programar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lkgy;->a:Lkgx;

    invoke-static {v0}, Lkgx;->a(Lkgx;)Lkgu;

    move-result-object v0

    invoke-interface {v0}, Lkgu;->a()V

    .line 55
    return-void
.end method
