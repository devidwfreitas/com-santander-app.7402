.class Lkgc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Lkfz;


# direct methods
.method constructor <init>(Lkfz;Lgkw;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lkgc;->b:Lkfz;

    iput-object p2, p0, Lkgc;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lkgc;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 50
    return-void
.end method
