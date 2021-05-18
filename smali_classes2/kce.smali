.class public Lkce;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkcd;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lkce;->b:Ljava/lang/String;

    .line 17
    new-instance v0, Lkcd;

    invoke-direct {v0, p1}, Lkcd;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lkce;->a:Lkcd;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lkce;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lkce;->a:Lkcd;

    invoke-virtual {v0}, Lkcd;->c()Z

    move-result v0

    return v0
.end method
