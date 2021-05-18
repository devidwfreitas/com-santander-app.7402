.class Lhma;
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
    .line 59
    iput-object p1, p0, Lhma;->b:Lhly;

    iput-object p2, p0, Lhma;->a:Lhlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lhma;->a:Lhlw;

    invoke-interface {v0}, Lhlw;->a()V

    .line 63
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lhma;->a:Lhlw;

    invoke-interface {v0}, Lhlw;->b()V

    .line 68
    return-void
.end method
