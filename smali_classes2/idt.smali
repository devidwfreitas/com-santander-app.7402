.class Lidt;
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

.field final synthetic b:Lidr;


# direct methods
.method constructor <init>(Lidr;Lgkw;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lidt;->b:Lidr;

    iput-object p2, p0, Lidt;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lidt;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 152
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lidt;->a(Ljava/lang/Boolean;)V

    return-void
.end method
