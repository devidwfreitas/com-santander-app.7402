.class public Lety;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lett;

.field private final b:[Leqo;


# direct methods
.method public constructor <init>(Lett;[Leqo;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lety;->a:Lett;

    .line 35
    iput-object p2, p0, Lety;->b:[Leqo;

    .line 36
    return-void
.end method


# virtual methods
.method public final d()Lett;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lety;->a:Lett;

    return-object v0
.end method

.method public final e()[Leqo;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lety;->b:[Leqo;

    return-object v0
.end method
