.class Llmw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkxl",
        "<",
        "Lkpy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llmv;


# direct methods
.method constructor <init>(Llmv;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Llmw;->a:Llmv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 195
    check-cast p1, Lkpy;

    invoke-virtual {p0, p1}, Llmw;->a(Lkpy;)V

    return-void
.end method

.method public a(Lkpy;)V
    .locals 2

    .prologue
    .line 199
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lkpy;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Llmw;->a:Llmv;

    iget-object v0, v0, Llmv;->a:Llmu;

    invoke-static {v0}, Llmu;->e(Llmu;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 203
    iget-object v0, p0, Llmw;->a:Llmv;

    iget-object v0, v0, Llmv;->a:Llmu;

    invoke-static {v0}, Llmu;->j(Llmu;)Llmz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Llmw;->a:Llmv;

    iget-object v0, v0, Llmv;->a:Llmu;

    invoke-static {v0}, Llmu;->j(Llmu;)Llmz;

    move-result-object v0

    invoke-interface {v0}, Llmz;->a()V

    .line 207
    :cond_0
    iget-object v0, p0, Llmw;->a:Llmv;

    iget-object v0, v0, Llmv;->a:Llmu;

    invoke-virtual {v0}, Llmu;->dismiss()V

    .line 210
    :cond_1
    return-void
.end method
