.class public Lfdk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leqp;


# instance fields
.field private a:Lfdi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lfdi;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lfdk;->a:Lfdi;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Lfdi;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lfdk;->a:Lfdi;

    return-object v0
.end method

.method public a(Leqo;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lfdk;->a:Lfdi;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lfdk;->a:Lfdi;

    invoke-virtual {v0, p1}, Lfdi;->a(Leqo;)V

    .line 32
    :cond_0
    return-void
.end method

.method public a(Lfdi;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lfdk;->a:Lfdi;

    .line 25
    return-void
.end method
