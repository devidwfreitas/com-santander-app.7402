.class Lgdu;
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
    .line 55
    iput-object p1, p0, Lgdu;->b:Lgdt;

    iput-object p2, p0, Lgdu;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 58
    check-cast p1, Lgay;

    .line 59
    iget-object v0, p0, Lgdu;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 60
    return-void
.end method
