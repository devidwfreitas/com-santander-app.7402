.class Llmx;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llmv;


# direct methods
.method constructor <init>(Llmv;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Llmx;->a:Llmv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 211
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Llmx;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Llmx;->a:Llmv;

    iget-object v0, v0, Llmv;->a:Llmu;

    invoke-static {v0}, Llmu;->e(Llmu;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 215
    iget-object v0, p0, Llmx;->a:Llmv;

    iget-object v0, v0, Llmv;->a:Llmu;

    invoke-virtual {v0}, Llmu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    return-void
.end method
