.class Libf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Liba;


# direct methods
.method constructor <init>(Liba;Lgkw;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Libf;->b:Liba;

    iput-object p2, p0, Libf;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Libf;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 92
    return-void
.end method
