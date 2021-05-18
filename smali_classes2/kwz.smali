.class Lkwz;
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

.field final synthetic b:Lkwy;


# direct methods
.method constructor <init>(Lkwy;Lkxa;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lkwz;->b:Lkwy;

    iput-object p2, p0, Lkwz;->a:Lkxa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lkwz;->b:Lkwy;

    invoke-static {v0}, Lkwy;->a(Lkwy;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lkwz;->b:Lkwy;

    invoke-static {v0}, Lkwy;->a(Lkwy;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 104
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 105
    iget-object v0, p0, Lkwz;->a:Lkxa;

    invoke-interface {v0, p1}, Lkxa;->a(Ljava/lang/Object;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lkwz;->a:Lkxa;

    invoke-interface {v0}, Lkxa;->a()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 97
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Lkwz;->a(Lis;)V

    return-void
.end method
