.class Lgem;
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
    .line 91
    iput-object p1, p0, Lgem;->a:Lgej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "Outros_LojaOnline_Acao"

    const-string v1, "Renegociacao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lgem;->a:Lgej;

    invoke-static {v0}, Lgej;->b(Lgej;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 96
    sget-object v0, Ljox;->SUBMENU_ITEM_RENEGOCIACAO_SIMULAR:Ljox;

    invoke-static {v0}, Lgpu;->a(Ljox;)V

    .line 97
    return-void
.end method
