.class public Lqt;
.super Labv;
.source "SourceFile"


# instance fields
.field private a:Lra;
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
.method public a()Lra;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lqt;->a:Lra;

    return-object v0
.end method

.method public a(Lra;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lqt;->a:Lra;

    .line 21
    return-void
.end method
