.class public Lov;
.super Labv;
.source "SourceFile"


# instance fields
.field private a:Low;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "product"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Labv;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Low;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lov;->a:Low;

    return-object v0
.end method

.method public a(Low;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lov;->a:Low;

    .line 21
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lov;->a:Low;

    invoke-virtual {v0}, Low;->b()Loy;

    move-result-object v0

    invoke-virtual {v0}, Loy;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lov;->a:Low;

    invoke-virtual {v0}, Low;->b()Loy;

    move-result-object v0

    invoke-virtual {v0}, Loy;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
