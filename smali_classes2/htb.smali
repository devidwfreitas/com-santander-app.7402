.class Lhtb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field final synthetic b:Lhsz;


# direct methods
.method private constructor <init>(Lhsz;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lhtb;->b:Lhsz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhsz;Lhsq;)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lhtb;-><init>(Lhsz;)V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lhtb;->a:Z

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhtb;->a:Z

    .line 265
    return-void
.end method
