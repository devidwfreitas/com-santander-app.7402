.class public Lhsc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhsb;


# instance fields
.field private a:Lhrk;

.field private b:Lhxq;


# direct methods
.method public constructor <init>(Lhrk;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lhsc;->a:Lhrk;

    .line 21
    invoke-static {}, Lhpp;->n()Lhpl;

    move-result-object v0

    invoke-interface {v0}, Lhpl;->h()Lhxq;

    move-result-object v0

    iput-object v0, p0, Lhsc;->b:Lhxq;

    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lhsc;->a:Lhrk;

    iget-object v1, p0, Lhsc;->b:Lhxq;

    invoke-interface {v0, v1}, Lhrk;->a(Lhxq;)V

    .line 27
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lhsc;->a:Lhrk;

    .line 34
    return-void
.end method
