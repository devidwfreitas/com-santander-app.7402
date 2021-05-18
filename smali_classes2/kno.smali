.class Lkno;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Lknn;


# direct methods
.method constructor <init>(Lknn;Lgkw;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lkno;->b:Lknn;

    iput-object p2, p0, Lkno;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lkno;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 29
    return-void
.end method
