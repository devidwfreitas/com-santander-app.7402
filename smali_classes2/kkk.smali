.class Lkkk;
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
    .line 41
    iput-object p1, p0, Lkkk;->a:Lkkj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lkia;

    invoke-virtual {p0, p1}, Lkkk;->a(Lkia;)V

    return-void
.end method

.method public a(Lkia;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lkkk;->a:Lkkj;

    invoke-static {v0}, Lkkj;->a(Lkkj;)Lkkf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkkf;->a(Lkia;)V

    .line 45
    return-void
.end method
