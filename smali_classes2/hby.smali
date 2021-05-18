.class Lhby;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lhbw;


# direct methods
.method constructor <init>(Lhbw;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lhby;->b:Lhbw;

    iput-object p2, p0, Lhby;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lhby;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 66
    return-void
.end method
