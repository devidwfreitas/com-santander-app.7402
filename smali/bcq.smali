.class public Lbcq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcd;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lbct;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lbct;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lbcq;->a:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lbcq;->b:Lbct;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lbct;Lbcr;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lbcq;-><init>(Ljava/lang/String;Lbct;)V

    return-void
.end method


# virtual methods
.method public a(Lawu;Lbdy;)Laye;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p1}, Lawu;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const-string v0, "LOTTIE"

    const-string v1, "Animation contains merge paths but they are disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Laym;

    invoke-direct {v0, p0}, Laym;-><init>(Lbcq;)V

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lbcq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lbct;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lbcq;->b:Lbct;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MergePaths{mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbcq;->b:Lbct;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
