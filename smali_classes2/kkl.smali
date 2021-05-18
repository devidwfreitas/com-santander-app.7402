.class Lkkl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkv",
        "<",
        "Lkic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkkj;


# direct methods
.method constructor <init>(Lkkj;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lkkl;->a:Lkkj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 54
    check-cast p1, Lkic;

    invoke-virtual {p0, p1}, Lkkl;->a(Lkic;)V

    return-void
.end method

.method public a(Lkic;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lkkl;->a:Lkkj;

    invoke-static {v0}, Lkkj;->a(Lkkj;)Lkkf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkkf;->a(Lkic;)V

    .line 58
    return-void
.end method
