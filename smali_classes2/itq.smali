.class Litq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Litp;


# direct methods
.method constructor <init>(Litp;Lgkw;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Litq;->b:Litp;

    iput-object p2, p0, Litq;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 60
    check-cast p1, Lmir;

    .line 62
    invoke-virtual {p1}, Lmir;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmwz;->a(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Litq;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 65
    return-void
.end method
