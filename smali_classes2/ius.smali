.class Lius;
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

.field final synthetic b:Liur;


# direct methods
.method constructor <init>(Liur;Lgkw;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lius;->b:Liur;

    iput-object p2, p0, Lius;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lius;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 163
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lius;->a(Ljava/lang/Boolean;)V

    return-void
.end method
