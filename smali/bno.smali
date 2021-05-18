.class final Lbno;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnr;


# instance fields
.field final synthetic a:Lbnp;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lbns;


# direct methods
.method constructor <init>(Lbnp;Ljava/lang/Object;Lbns;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lbno;->a:Lbnp;

    iput-object p2, p0, Lbno;->b:Ljava/lang/Object;

    iput-object p3, p0, Lbno;->c:Lbns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbhp;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lbno;->c:Lbns;

    invoke-interface {v0, p1}, Lbns;->a(Lbhp;)V

    .line 80
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lbno;->a:Lbnp;

    iget-object v1, p0, Lbno;->b:Ljava/lang/Object;

    iget-object v2, p0, Lbno;->c:Lbns;

    invoke-interface {v0, v1, p1, v2}, Lbnp;->a(Ljava/lang/Object;Ljava/lang/Object;Lbnq;)V

    .line 74
    iget-object v0, p0, Lbno;->c:Lbns;

    invoke-interface {v0}, Lbns;->a()V

    .line 75
    return-void
.end method
