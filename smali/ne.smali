.class public Lne;
.super Labv;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "text"
    .end annotation
.end field

.field private b:Lnd;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "applications"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Labv;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lne;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lne;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public a(Lnd;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lne;->b:Lnd;

    return-void
.end method

.method public b()Lnd;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lne;->b:Lnd;

    return-object v0
.end method
