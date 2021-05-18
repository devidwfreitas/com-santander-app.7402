.class public Lir;
.super Liq;
.source "SourceFile"


# instance fields
.field private f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Liq;-><init>()V

    .line 9
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lir;->f:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lir;->f:Ljava/lang/Boolean;

    .line 18
    return-void
.end method

.method public g()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lir;->f:Ljava/lang/Boolean;

    return-object v0
.end method
