.class Lkww;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkw",
        "<",
        "Lis;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkxa;

.field final synthetic b:Lkwv;


# direct methods
.method constructor <init>(Lkwv;Lkxa;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lkww;->b:Lkwv;

    iput-object p2, p0, Lkww;->a:Lkxa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lkww;->b:Lkwv;

    invoke-static {v0}, Lkwv;->a(Lkwv;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lkww;->b:Lkwv;

    invoke-static {v0}, Lkwv;->a(Lkwv;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 130
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 131
    iget-object v0, p0, Lkww;->a:Lkxa;

    invoke-interface {v0, p1}, Lkxa;->a(Ljava/lang/Object;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lkww;->a:Lkxa;

    invoke-interface {v0}, Lkxa;->a()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 123
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Lkww;->a(Lis;)V

    return-void
.end method
