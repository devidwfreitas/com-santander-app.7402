.class public Lhw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lnlk;
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lhw;->a:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Liz;
    .locals 1
    .annotation runtime Lnlm;
    .end annotation

    .annotation runtime Lnnd;
        a = "HTTPRequester"
    .end annotation

    .prologue
    .line 33
    new-instance v0, Liz;

    invoke-direct {v0}, Liz;-><init>()V

    .line 34
    return-object v0
.end method

.method public a(Liz;)Ljd;
    .locals 2
    .param p1    # Liz;
        .annotation runtime Lnnd;
            a = "HTTPRequester"
        .end annotation
    .end param
    .annotation runtime Lnlm;
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljd;

    iget-object v1, p0, Lhw;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Ljd;-><init>(Landroid/content/Context;Liz;)V

    return-object v0
.end method

.method public b()Landroid/content/Context;
    .locals 1
    .annotation runtime Lnlm;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lhw;->a:Landroid/content/Context;

    return-object v0
.end method
