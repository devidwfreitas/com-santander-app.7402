.class Lhrt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhpf;


# instance fields
.field final synthetic a:Lhrq;


# direct methods
.method constructor <init>(Lhrq;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lhrt;->a:Lhrq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lhrt;->a:Lhrq;

    invoke-static {v0}, Lhrq;->a(Lhrq;)Lhqo;

    move-result-object v0

    invoke-interface {v0}, Lhqo;->d()V

    .line 154
    iget-object v0, p0, Lhrt;->a:Lhrq;

    invoke-static {v0}, Lhrq;->e(Lhrq;)V

    .line 155
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lhrt;->a:Lhrq;

    invoke-static {v0}, Lhrq;->a(Lhrq;)Lhqo;

    move-result-object v0

    invoke-interface {v0}, Lhqo;->d()V

    .line 160
    return-void
.end method
