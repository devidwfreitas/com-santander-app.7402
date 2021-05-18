.class Lgdv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Lgdt;


# direct methods
.method constructor <init>(Lgdt;Lgkw;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lgdv;->b:Lgdt;

    iput-object p2, p0, Lgdv;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lgdv;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 70
    return-void
.end method
