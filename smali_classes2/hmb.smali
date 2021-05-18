.class Lhmb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhmz;


# instance fields
.field final synthetic a:Lhlw;

.field final synthetic b:Lhly;


# direct methods
.method constructor <init>(Lhly;Lhlw;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lhmb;->b:Lhly;

    iput-object p2, p0, Lhmb;->a:Lhlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lhmb;->a:Lhlw;

    invoke-interface {v0}, Lhlw;->a()V

    .line 77
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lhmb;->a:Lhlw;

    invoke-interface {v0}, Lhlw;->b()V

    .line 82
    return-void
.end method
