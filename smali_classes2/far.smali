.class public final Lfar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lfam;

.field private final b:Lfam;

.field private final c:Lfam;


# direct methods
.method public constructor <init>([Lfam;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lfar;->a:Lfam;

    .line 33
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lfar;->b:Lfam;

    .line 34
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lfar;->c:Lfam;

    .line 35
    return-void
.end method


# virtual methods
.method public a()Lfam;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lfar;->a:Lfam;

    return-object v0
.end method

.method public b()Lfam;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lfar;->b:Lfam;

    return-object v0
.end method

.method public c()Lfam;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lfar;->c:Lfam;

    return-object v0
.end method
