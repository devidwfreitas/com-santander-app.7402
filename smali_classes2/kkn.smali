.class Lkkn;
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
        "Lkia;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkkj;


# direct methods
.method constructor <init>(Lkkj;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lkkn;->a:Lkkj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    check-cast p1, Lkia;

    invoke-virtual {p0, p1}, Lkkn;->a(Lkia;)V

    return-void
.end method

.method public a(Lkia;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lkkn;->a:Lkkj;

    invoke-static {v0}, Lkkj;->a(Lkkj;)Lkkf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkkf;->b(Lkia;)V

    .line 111
    return-void
.end method
