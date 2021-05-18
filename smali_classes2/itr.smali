.class Litr;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Litp;


# direct methods
.method constructor <init>(Litp;Lgkw;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Litr;->b:Litp;

    iput-object p2, p0, Litr;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Litr;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Litr;->a(Ljava/lang/Boolean;)V

    return-void
.end method
