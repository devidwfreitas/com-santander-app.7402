.class public Lfwm;
.super Lfvu;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/lang/Double;

.field private c:Ljava/lang/Double;

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfwn;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lfvu;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lfwm;->b:Ljava/lang/Double;

    return-object v0
.end method

.method public a(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lfwm;->b:Ljava/lang/Double;

    .line 38
    return-void
.end method

.method public a(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lfwm;->b:Ljava/lang/Double;

    .line 32
    iput-object p2, p0, Lfwm;->c:Ljava/lang/Double;

    .line 33
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lfwm;->e:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfwn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lfwm;->d:Ljava/util/Vector;

    .line 58
    return-void
.end method

.method public b()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lfwm;->c:Ljava/lang/Double;

    return-object v0
.end method

.method public b(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lfwm;->c:Ljava/lang/Double;

    .line 42
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lfwm;->f:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public c()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lfwn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lfwm;->d:Ljava/util/Vector;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lfwm;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lfwm;->f:Ljava/lang/String;

    return-object v0
.end method
