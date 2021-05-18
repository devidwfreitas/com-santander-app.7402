.class Lgel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lged;


# instance fields
.field final synthetic a:Lgej;


# direct methods
.method constructor <init>(Lgej;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lgel;->a:Lgej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "Outros_LojaOnline_Acao"

    const-string v1, "Emprestimos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lgel;->a:Lgej;

    invoke-static {v0}, Lgej;->b(Lgej;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 85
    sget-object v0, Ljox;->SUBMENU_ITEM_SIMULAR_CONTRATAR:Ljox;

    invoke-static {v0}, Lgpu;->a(Ljox;)V

    .line 86
    return-void
.end method
