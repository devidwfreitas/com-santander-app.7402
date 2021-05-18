.class Lkcp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Lkco;


# direct methods
.method constructor <init>(Lkco;Lgkw;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lkcp;->b:Lkco;

    iput-object p2, p0, Lkcp;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lkcp;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 27
    return-void
.end method
