.class Lhsk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqc;


# instance fields
.field final synthetic a:Lhsj;


# direct methods
.method constructor <init>(Lhsj;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lhsk;->a:Lhsj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lhsk;->a:Lhsj;

    invoke-static {v0}, Lhsj;->a(Lhsj;)Lhrh;

    move-result-object v0

    invoke-interface {v0}, Lhrh;->h()V

    .line 47
    iget-object v0, p0, Lhsk;->a:Lhsj;

    invoke-static {v0}, Lhsj;->a(Lhsj;)Lhrh;

    move-result-object v0

    invoke-interface {v0}, Lhrh;->c()V

    .line 48
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lhsk;->a:Lhsj;

    invoke-static {v0}, Lhsj;->a(Lhsj;)Lhrh;

    move-result-object v0

    invoke-interface {v0}, Lhrh;->h()V

    .line 53
    iget-object v0, p0, Lhsk;->a:Lhsj;

    invoke-static {v0}, Lhsj;->a(Lhsj;)Lhrh;

    move-result-object v0

    invoke-interface {v0}, Lhrh;->d()V

    .line 54
    return-void
.end method
