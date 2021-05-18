.class public Liry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/lang/String; = "extra_check_version_action"

.field public static final b:I = 0x1f4

.field public static final c:I = 0x3e8

.field public static final d:I = 0x7d0

.field public static final e:I = 0x3

.field public static final f:I = 0x2


# instance fields
.field private g:Ljava/lang/String;
    .annotation runtime Leks;
        a = "message"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Leks;
        a = "code"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Leks;
        a = "action"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Liry;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liry;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Liry;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liry;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Liry;->i:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 43
    :goto_0
    return v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const/4 v0, 0x0

    goto :goto_0
.end method
