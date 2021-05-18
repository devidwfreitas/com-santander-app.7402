.class public Lyr;
.super Labv;
.source "SourceFile"


# instance fields
.field private a:Lys;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "cso"
    .end annotation
.end field

.field private b:Lzc;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "santanderId"
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
.method public a()Lys;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lyr;->a:Lys;

    return-object v0
.end method

.method public a(Lys;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lyr;->a:Lys;

    .line 24
    return-void
.end method

.method public a(Lzc;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lyr;->b:Lzc;

    .line 32
    return-void
.end method

.method public b()Lzc;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lyr;->b:Lzc;

    return-object v0
.end method
